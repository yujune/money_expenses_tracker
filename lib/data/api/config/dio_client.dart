import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:money_expenses_tracker/data/models/error/api_error.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
DioClient dioClient(Ref ref) {
  return DioClient();
}

class DioClient {
  final Dio dio;

  static const baseUrl = 'https://media.halogen.my';
  static final logger = Logger('DioClient');

  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
          ),
        )..interceptors.addAll(
            [
              PrettyDioLogger(
                requestHeader: true,
                requestBody: true,
              ),
            ],
          );

  Future<Response<T?>> call<T>(
    String method,
    String path, {
    Object? body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
  }) async {
    try {
      final response = await dio.fetch<T>(
        RequestOptions(
          method: method,
          path: path,
          baseUrl: baseUrl,
          queryParameters: queryParameters,
          contentType: contentType ?? Headers.jsonContentType,
          headers: headers,
          data: body,
        ),
      );

      return response;
    } on DioException catch (ex) {
      logger.warning(ex.message);
      logger.warning(ex.response);
      switch (ex.type) {
        case DioExceptionType.badResponse:
          final errorResponseData = ex.response?.data;
          if (errorResponseData is Map<String, dynamic>) {
            throw ApiError.fromJson(errorResponseData);
          } else if (errorResponseData is String) {
            final statusMessage = errorResponseData;
            throw ApiError(
              code: ApiErrorCode.unknown.code,
              message: statusMessage,
            );
          } else {
            rethrow;
          }
        default:
          throw Exception(
            'Error in DioClient for $path: ${ex.message}',
          );
      }
    }
  }
}
