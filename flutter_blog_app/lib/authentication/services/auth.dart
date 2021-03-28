import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/authentication/domain/failures/auth_failure.dart';
import 'package:flutter_blog_app/authentication/interface/auth_interface.dart';
import 'package:flutter_blog_app/core/services/api_service.dart';
import 'package:flutter_blog_app/core/services/shared_preference_service.dart';
import 'package:flutter_blog_app/core/utils/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthInterface)
class AuthService extends AuthInterface {
  final ApiService _apiService;

  AuthService(this._apiService);

  @override
  Future<bool> getSignedInUser() async {
    final String auth_token =
        await SharedpreferenceService.getStringValueFromSp(
            AUTH_TOKEN_SP_STRING);
    if (auth_token != null) {
      return true;
    }
    return false;
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {String emailAddress, String password}) {
    return _apiService.login(email: emailAddress, password: password);
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
