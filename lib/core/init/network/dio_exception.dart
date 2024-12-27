import 'dart:io' show SocketException;
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:dio/dio.dart' show DioException, DioExceptionType;

// DioException türlerini işleyen özel bir istisna sınıfı.
class DioExceptions implements Exception {
  late String message;

  // DioException türüne göre hata mesajını belirler.
  DioExceptions.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = AppStrings.cancelRequest;
        break;
      case DioExceptionType.connectionTimeout:
        message = AppStrings.connectionTimeOut;
        break;
      case DioExceptionType.receiveTimeout:
        message = AppStrings.receiveTimeOut;
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioException.response?.statusCode,
          dioException.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = AppStrings.sendTimeOut;
        break;
      case DioExceptionType.unknown:
        if (dioException.error is SocketException) {
          message = AppStrings.socketException;
          break;
        }
        message = AppStrings.unexpectedError;
        break;
      default:
        message = AppStrings.unknownError;
        break;
    }
  }

  // HTTP durum koduna göre hata mesajını döner.
  String _handleError(int? statusCode, dynamic error) {
    return switch (statusCode) {
      400 => AppStrings.badRequest,
      401 => AppStrings.unauthorized,
      403 => AppStrings.forbidden,
      404 => AppStrings.notFound,
      422 => AppStrings.duplicateEmail,
      500 => AppStrings.internalServerError,
      502 => AppStrings.badGateway,
      _ => AppStrings.unknownError
    };
  }

  @override
  String toString() => message;
}
