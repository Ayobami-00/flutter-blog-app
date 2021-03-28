import 'package:flutter_blog_app/authentication/domain/failures/auth_data_failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final AuthDataFailure authDataFailure;

  UnexpectedValueError(this.authDataFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a AuthDataFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $AuthDataFailure');
  }
}
