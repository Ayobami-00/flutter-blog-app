import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_blog_app/authentication/domain/failures/auth_failure.dart';

abstract class AuthInterface {
  Future<bool> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });
  Future<void> signOut();
}
