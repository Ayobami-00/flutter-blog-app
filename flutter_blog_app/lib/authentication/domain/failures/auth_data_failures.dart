import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data_failures.freezed.dart';

@freezed
abstract class AuthDataFailure<T> with _$AuthDataFailure<T> {
  const factory AuthDataFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory AuthDataFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory AuthDataFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
  const factory AuthDataFailure.passwordMismatch({
    @required T failedValue,
  }) = PasswordMismatch<T>;
}