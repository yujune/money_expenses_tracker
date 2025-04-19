import 'package:json_annotation/json_annotation.dart';

part 'api_error.g.dart';

@JsonEnum(valueField: 'code')
enum ApiErrorCode {
  unknown(
    code: 'UNKNOWN',
    message: 'Unknown error, please contact support',
  ),
  internalServerError(
    code: 'INTERNAL_SERVER_ERROR',
    message: 'Server error, please contact support',
  );

  const ApiErrorCode({
    required this.code,
    required this.message,
  });

  final String code;
  final String message;
}

@JsonSerializable()
class ApiError {
  //Using enum is a lot of work,
  //Need to make sure the new error code is added to the enum, else json parsing will fail.
  // final ApiErrorCode code;
  final String code;
  final String message;

  const ApiError({
    required this.code,
    required this.message,
  });

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);
}
