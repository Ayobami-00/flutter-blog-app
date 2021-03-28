// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'api_service_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ApiServiceFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result unsuccessfull(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result unsuccessfull(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result unsuccessfull(Unsuccessful value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result unsuccessfull(Unsuccessful value),
    @required Result orElse(),
  });
}

class _$ApiServiceFailureTearOff {
  const _$ApiServiceFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  Unsuccessful unsuccessfull() {
    return const Unsuccessful();
  }
}

const $ApiServiceFailure = _$ApiServiceFailureTearOff();

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'ApiServiceFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result unsuccessfull(),
  }) {
    assert(serverError != null);
    assert(unsuccessfull != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result unsuccessfull(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result unsuccessfull(Unsuccessful value),
  }) {
    assert(serverError != null);
    assert(unsuccessfull != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result unsuccessfull(Unsuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ApiServiceFailure {
  const factory ServerError() = _$ServerError;
}

class _$Unsuccessful implements Unsuccessful {
  const _$Unsuccessful();

  @override
  String toString() {
    return 'ApiServiceFailure.unsuccessfull()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unsuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result unsuccessfull(),
  }) {
    assert(serverError != null);
    assert(unsuccessfull != null);
    return unsuccessfull();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result unsuccessfull(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unsuccessfull != null) {
      return unsuccessfull();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result unsuccessfull(Unsuccessful value),
  }) {
    assert(serverError != null);
    assert(unsuccessfull != null);
    return unsuccessfull(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result unsuccessfull(Unsuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unsuccessfull != null) {
      return unsuccessfull(this);
    }
    return orElse();
  }
}

abstract class Unsuccessful implements ApiServiceFailure {
  const factory Unsuccessful() = _$Unsuccessful;
}
