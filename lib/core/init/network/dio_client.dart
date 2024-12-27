import 'package:count_me/core/init/network/api_config.dart';
import 'package:count_me/core/init/network/dio_interceptor.dart';
import 'package:dio/dio.dart' show Dio, ResponseType;

// DioClient sınıfı: Dio istemcisini yapılandırır ve API istekleri için kullanılır.
class DioClient {
  final Dio dio;

  DioClient(this.dio) {
    dio
      ..options.baseUrl = ApiConfig.baseUrl // Temel URL.
      ..options.headers = ApiConfig.header // İstek başlıkları.
      ..options.connectTimeout =
          ApiConfig.connectionTimeout // Bağlantı zaman aşımı.
      ..options.receiveTimeout = ApiConfig.receiveTimeout // Yanıt zaman aşımı.
      ..options.responseType = ResponseType.json // Yanıt türü (JSON).
      ..interceptors.add(DioInterceptor()); // Özel interceptor eklenir.
  }
}
