// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_data_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$AuthDataFailure<T> {
  T get failedValue;

  AuthDataFailure<T> copyWith({T failedValue});

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(@required T failedValue),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result passwordMismatch(@required T failedValue),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(@required T failedValue),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result passwordMismatch(@required T failedValue),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordMismatch(PasswordMismatch<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordMismatch(PasswordMismatch<T> value),
    @required Result orElse(),
  });
}

class _$AuthDataFailureTearOff {
  const _$AuthDataFailureTearOff();

  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  PasswordMismatch<T> passwordMismatch<T>({@required T failedValue}) {
    return PasswordMismatch<T>(
      failedValue: failedValue,
    );
  }
}

const $AuthDataFailure = _$AuthDataFailureTearOff();

class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthDataFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$Empty<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$Empty<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(@required T failedValue),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result passwordMismatch(@required T failedValue),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(@required T failedValue),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result passwordMismatch(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordMismatch(PasswordMismatch<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordMismatch(PasswordMismatch<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements AuthDataFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;

  @override
  Empty<T> copyWith({T failedValue});
}

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthDataFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidEmail<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$InvalidEmail<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(@required T failedValue),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result passwordMismatch(@required T failedValue),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(@required T failedValue),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result passwordMismatch(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordMismatch(PasswordMismatch<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordMismatch(PasswordMismatch<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthDataFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;

  @override
  InvalidEmail<T> copyWith({T failedValue});
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthDataFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$ShortPassword<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$ShortPassword<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(@required T failedValue),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result passwordMismatch(@required T failedValue),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(@required T failedValue),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result passwordMismatch(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordMismatch(PasswordMismatch<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordMismatch(PasswordMismatch<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements AuthDataFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;

  @override
  ShortPassword<T> copyWith({T failedValue});
}

class _$PasswordMismatch<T> implements PasswordMismatch<T> {
  const _$PasswordMismatch({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthDataFailure<$T>.passwordMismatch(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordMismatch<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$PasswordMismatch<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$PasswordMismatch<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(@required T failedValue),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result passwordMismatch(@required T failedValue),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return passwordMismatch(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(@required T failedValue),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result passwordMismatch(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordMismatch != null) {
      return passwordMismatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordMismatch(PasswordMismatch<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordMismatch != null);
    return passwordMismatch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordMismatch(PasswordMismatch<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordMismatch != null) {
      return passwordMismatch(this);
    }
    return orElse();
  }
}

abstract class PasswordMismatch<T> implements AuthDataFailure<T> {
  const factory PasswordMismatch({@required T failedValue}) =
      _$PasswordMismatch<T>;

  @override
  T get failedValue;

  @override
  PasswordMismatch<T> copyWith({T failedValue});
}
