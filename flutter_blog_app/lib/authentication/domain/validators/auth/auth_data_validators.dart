import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/authentication/domain/failures/auth_data_failures.dart';

Either<AuthDataFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(AuthDataFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<AuthDataFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(AuthDataFailure.invalidEmail(failedValue: input));
  }
}

Either<AuthDataFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(AuthDataFailure.shortPassword(failedValue: input));
  }
}

Either<AuthDataFailure<String>, String> validateConfirmPassword(
    String input, String tempPassword) {
  // final String _tempPassword = await SharedpreferenceService().getStringValuesSF("TEMP_PASSWORD");
  if (input == tempPassword) {
    return right(input);
  } else {
    return left(AuthDataFailure.passwordMismatch(failedValue: input));
  }
}
