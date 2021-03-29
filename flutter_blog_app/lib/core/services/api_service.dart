import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_app/authentication/domain/failures/api_service_failures.dart';
import 'package:flutter_blog_app/authentication/domain/failures/auth_failure.dart';
import 'package:flutter_blog_app/blogs/models/blog.dart';
import 'package:flutter_blog_app/core/utils/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

import '../../config.dart';
import 'shared_preference_service.dart';

@injectable
class ApiService {
  static const String _urlEndpoint = AppConfig.urlEndpoint;

  final Dio _dio = Dio(
    BaseOptions(
        connectTimeout: 50000,
        receiveTimeout: 4000,
        baseUrl: _urlEndpoint,
        contentType: 'application/json'),
  );

  Future<Either<AuthFailure, Unit>> login({
    @required String email,
    @required String password,
  }) async {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    try {
      final FormData formData = FormData.fromMap({
        "email": email,
        "password": password,
      });

      final Response response = await _dio.post("/v1/login", data: formData);
      if (response.statusCode == 201) {
        final dynamic result = response.data as Map<String, dynamic>;
        await SharedpreferenceService.addStringToSp(
            AUTH_TOKEN_SP_STRING, result["token"] as String);
        return right(unit);
      } else {
        return left(const AuthFailure.unauthorized());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<Either<ApiServiceFailure, List<Blog>>> getBlogList(
    String token,
  ) async {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    _dio.options.headers = {"Authorization": "Bearer $token"};
    try {
      final Response response = await _dio.get("/v1/blogs");

      if (response.statusCode == 200) {
        List<Blog> blogList = [];

        dynamic result = response.data;

        print(result);

        result.forEach((data) {
          blogList.add(Blog.fromJson(data as Map<String, dynamic>));
        });
        return right(blogList);
      } else {
        return left(const ApiServiceFailure.unsuccessfull());
      }
    } catch (e) {
      return left(const ApiServiceFailure.serverError());
    }
  }
}
