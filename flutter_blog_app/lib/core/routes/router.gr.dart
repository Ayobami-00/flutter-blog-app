// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_blog_app/splash_page.dart';
import 'package:flutter_blog_app/authentication/providers/login_bloc_provider.dart';
import 'package:flutter_blog_app/blogs/providers/blog_list_page_bloc_provider.dart';
import 'package:flutter_blog_app/blogs/providers/blog_details_page_bloc_provider.dart';

class Router {
  static const splashPage = '/';
  static const loginBlocProvider = '/login-bloc-provider';
  static const blogListPageProvider = '/blog-list-page-provider';
  static const blogDetailsPageProvider = '/blog-details-page-provider';
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
      case Router.blogDetailsPageProvider:
        if (hasInvalidArgs<BlogDetailsPageProviderArguments>(args)) {
          return misTypedArgsRoute<BlogDetailsPageProviderArguments>(args);
        }
        final typedArgs = args as BlogDetailsPageProviderArguments ??
            BlogDetailsPageProviderArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              BlogDetailsPageProvider(key: typedArgs.key, id: typedArgs.id),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//BlogDetailsPageProvider arguments holder class
class BlogDetailsPageProviderArguments {
  final Key key;
  final String id;
  BlogDetailsPageProviderArguments({this.key, this.id});
}
