// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_blog_app/splash_page.dart';
import 'package:flutter_blog_app/authentication/providers/login_bloc_provider.dart';
import 'package:flutter_blog_app/blogs/providers/blog_list_page_provider.dart';

class Router {
  static const splashPage = '/';
  static const loginBlocProvider = '/login-bloc-provider';
  static const blogListPageProvider = '/blog-list-page-provider';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Router.loginBlocProvider:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginBlocProvider(),
          settings: settings,
        );
      case Router.blogListPageProvider:
        return MaterialPageRoute<dynamic>(
          builder: (_) => BlogListPageProvider(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
