import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_service_failures.freezed.dart';

@freezed
abstract class ApiServiceFailure with _$ApiServiceFailure {
  const factory ApiServiceFailure.serverError() = ServerError;
  const factory ApiServiceFailure.unsuccessfull() = Unsuccessful;
}