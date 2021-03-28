import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_blog_app/authentication/interface/auth_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthInterface _authInterface;
  AuthenticationBloc(this._authInterface) : super();

  @override
  AuthenticationState get initialState => const AuthenticationState.initial();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      authverifyAuthStatus: (e) async* {
        final isSignedIn = await _authInterface.getSignedInUser();
        if (isSignedIn) {
          yield const AuthenticationState.authenticated();
        } else {
          yield const AuthenticationState.unauthenticated();
        }
      },
      signOut: (e) async* {
        await _authInterface.signOut();
        yield const AuthenticationState.unauthenticated();
      },
    );
  }
}
