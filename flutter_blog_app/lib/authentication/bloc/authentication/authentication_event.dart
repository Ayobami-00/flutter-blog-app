part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authverifyAuthStatus() = VerifyAuthStatus;
  const factory AuthenticationEvent.signOut() = SignOut;
}