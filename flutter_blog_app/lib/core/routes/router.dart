import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_blog_app/authentication/ui/pages/login_bloc_provider.dart';

import '../../splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;

  LoginBlocProvider loginBlocProvider;
}
