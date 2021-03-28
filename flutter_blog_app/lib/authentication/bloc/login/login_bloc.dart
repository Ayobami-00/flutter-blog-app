import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/authentication/domain/errors/errors.dart';
import 'package:flutter_blog_app/authentication/domain/failures/auth_data_failures.dart';
import 'package:flutter_blog_app/authentication/domain/failures/auth_failure.dart';
import 'package:flutter_blog_app/authentication/domain/validators/auth/auth_data_validators.dart';
import 'package:flutter_blog_app/authentication/interface/auth_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthInterface _authInterface;
  LoginBloc(this._authInterface) : super();

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: validateEmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: validatePassword(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      loginWithEmailAndPasswordPressed: (e) async* {
        yield* _performSignInWithEmailAndPassword();
      },
    );
  }

  Stream<LoginState> _performSignInWithEmailAndPassword() async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isRight();
    final isPasswordValid = state.password.isRight();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _authInterface.signInWithEmailAndPassword(
        emailAddress:
            state.emailAddress.getOrElse(() => throw UnexpectedValueError),
        password: state.password.getOrElse(() => throw UnexpectedValueError),
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
