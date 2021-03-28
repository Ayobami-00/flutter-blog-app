import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/authentication/bloc/login/login_bloc.dart';
import 'package:flutter_blog_app/injection.dart';
import 'login_page.dart';

class LoginBlocProvider extends StatefulWidget {
  @override
  _LoginBlocProviderState createState() => _LoginBlocProviderState();
}

class _LoginBlocProviderState extends State<LoginBlocProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LoginBloc>(),
        child: LoginPage(),
      ),
    );
  }
}
