import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/core/routes/router.gr.dart';

import 'authentication/bloc/authentication/authentication_bloc.dart';
import 'core/ui/themes/flutter_bloc_app_theme.dart';
import 'injection.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<AuthenticationBloc>()
              ..add(const AuthenticationEvent.authverifyAuthStatus()),
          ),
        ],
        child: MaterialApp(
          title: 'Coinslash',
          debugShowCheckedModeBanner: false,
          initialRoute: Router.splashPage,
          onGenerateRoute: Router.onGenerateRoute,
          navigatorKey: Router.navigator.key,
          theme: flutterBlogAppAppTheme(),
        ));
  }
}
