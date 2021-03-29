import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_blog_app/authentication/providers/login_bloc_provider.dart';
import 'package:flutter_blog_app/blogs/providers/blog_details_page_bloc_provider.dart';
import 'package:flutter_blog_app/blogs/providers/blog_list_page_bloc_provider.dart';

import '../../splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;

  LoginBlocProvider loginBlocProvider;

  BlogListPageProvider blogListPageProvider;

  BlogDetailsPageProvider blogDetailsPageProvider;
}
