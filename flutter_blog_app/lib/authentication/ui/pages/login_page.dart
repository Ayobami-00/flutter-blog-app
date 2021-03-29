import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/core/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_blog_app/authentication/bloc/login/login_bloc.dart';
import 'package:flutter_blog_app/core/ui/themes/flutter_bloc_app_theme.dart';
import 'package:flutter_blog_app/core/ui/widgets/custom_solid_button.dart';
import 'package:flutter_blog_app/core/ui/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const Center(child: CircularProgressIndicator());
              });
        } else {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  Router.navigator.pop();
                  failure.map(serverError: (_) {
                    Fluttertoast.showToast(
                      msg: 'Server error',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  }, unauthorized: (_) {
                    Fluttertoast.showToast(
                      msg: 'Unauthorized',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  });
                },
                (_) {
                  Router.navigator
                      .pushReplacementNamed(Router.blogListPageProvider);
                },
              );
            },
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const SizedBox(height: 100),
                  Center(
                      child: Text(
                    "BLOG APP",
                    style: flutterBlogAppAppTheme()
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 35.0),
                  )),
                  const SizedBox(height: 60),
                  CustomTextFormField(
                    label: "EMAIL",
                    iconData: Icons.email,
                    onChanged: (value) => context
                        .bloc<LoginBloc>()
                        .add(LoginEvent.emailChanged(value)),
                    validator: (_) =>
                        context.bloc<LoginBloc>().state.emailAddress.fold(
                              (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid email',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    label: 'PASSWORD',
                    textInputAction: TextInputAction.done,
                    // ignore: avoid_bool_literals_in_conditional_expressions
                    obscureText: !passwordVisible ? true : false,
                    iconData: Icons.lock,
                    suffixIcon: IconButton(
                      icon: passwordVisible
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off),
                      color: Colors.black,
                      onPressed: () {
                        setState(() => passwordVisible = !passwordVisible);
                      },
                    ),
                    onChanged: (value) => context
                        .bloc<LoginBloc>()
                        .add(LoginEvent.passwordChanged(value)),
                    validator: (_) =>
                        context.bloc<LoginBloc>().state.password.fold(
                              (f) => f.maybeMap(
                                shortPassword: (_) =>
                                    'Short Password : minimum of 6 characters',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                  ),
                  const SizedBox(height: 30),
                  AppSolidButton(
                      text: 'SIGN IN',
                      backgroundColor: flutterBlogAppAppTheme().accentColor,
                      textColor: Colors.white,
                      height: 40.0,
                      onPressed: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }

                        context.bloc<LoginBloc>().add(const LoginEvent
                            .loginWithEmailAndPasswordPressed());
                      }),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
