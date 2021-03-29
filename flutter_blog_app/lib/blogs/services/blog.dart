import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/authentication/domain/failures/api_service_failures.dart';
import 'package:flutter_blog_app/authentication/domain/failures/auth_failure.dart';
import 'package:flutter_blog_app/authentication/interface/auth_interface.dart';
import 'package:flutter_blog_app/blogs/interface/blogs.dart';
import 'package:flutter_blog_app/blogs/models/blog.dart';
import 'package:flutter_blog_app/core/services/api_service.dart';
import 'package:flutter_blog_app/core/services/shared_preference_service.dart';
import 'package:flutter_blog_app/core/utils/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BlogInterface)
class BlogService extends BlogInterface {
  final ApiService _apiService;

  BlogService(this._apiService);

  @override
  Future<Either<ApiServiceFailure, List<Blog>>> getBlogsList() async {
    String auth_token = await SharedpreferenceService.getStringValueFromSp(
        AUTH_TOKEN_SP_STRING);
    return _apiService.getBlogList(auth_token);
  }
}
