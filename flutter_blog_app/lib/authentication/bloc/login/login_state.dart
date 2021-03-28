part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required Either<AuthDataFailure<String>, String> emailAddress,
    @required Either<AuthDataFailure<String>, String> password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        emailAddress: validateEmailAddress('thisisatest@gmail.com'),
        password: validatePassword('---------'),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
