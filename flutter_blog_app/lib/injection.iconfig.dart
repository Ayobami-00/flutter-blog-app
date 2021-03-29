// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_blog_app/core/services/api_service.dart';
import 'package:flutter_blog_app/authentication/services/auth.dart';
import 'package:flutter_blog_app/authentication/interface/auth_interface.dart';
import 'package:flutter_blog_app/authentication/bloc/authentication/authentication_bloc.dart';
import 'package:flutter_blog_app/blogs/services/blog.dart';
import 'package:flutter_blog_app/blogs/interface/blogs.dart';
import 'package:flutter_blog_app/blogs/bloc/blogs_bloc.dart';
import 'package:flutter_blog_app/authentication/bloc/login/login_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<ApiService>(() => ApiService());
  g.registerLazySingleton<AuthInterface>(() => AuthService(g<ApiService>()));
  g.registerFactory<AuthenticationBloc>(
      () => AuthenticationBloc(g<AuthInterface>()));
  g.registerLazySingleton<BlogInterface>(() => BlogService(g<ApiService>()));
  g.registerFactory<BlogsBloc>(() => BlogsBloc(g<BlogInterface>()));
  g.registerFactory<LoginBloc>(() => LoginBloc(g<AuthInterface>()));
}
