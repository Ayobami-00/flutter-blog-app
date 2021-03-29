import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'authentication/bloc/authentication/authentication_bloc.dart';
import 'core/routes/router.gr.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (authValue) {
              Router.navigator
                  .pushReplacementNamed(Router.blogListPageProvider);
            },
            unauthenticated: (_) async {
              Router.navigator
                  .pushReplacementNamed(Router.blogListPageProvider);
              // Router.navigator.pushReplacementNamed(Router.loginBlocProvider);
            });
      },
      child: Container(),
    );
  }
}
