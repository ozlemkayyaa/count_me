import 'package:count_me/core/extension/dio_extension.dart';
import 'package:count_me/core/init/network/dio_exception.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

// API yardımcı sınıfı: Tüm HTTP isteklerini tek bir yerden yönetmek için generic bir yapı.
abstract mixin class ApiHelper {
  // Şablon metod: HTTP isteğini yapar ve durum kodunu kontrol eder.
  // Başarılıysa `true` döner, aksi halde bir `DioExceptions` fırlatır.
  Future<bool> _requestMethodTemplate(
      Future<Response<dynamic>> apiCallback) async {
    final Response response = await apiCallback;
    // Durum kodu başarılıysa `true` döner.
    if (response.statusCode.success) {
      return true;
    } else {
      // Hata durumunda özel bir istisna fırlatılır.
      throw DioExceptions;
    }
  }

  // Sunucuda veri oluşturma işlemleri için generic POST metodu.
  Future<bool> makePostRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  // Sunucuda veri güncelleme işlemleri için generic PUT metodu.
  Future<bool> makePutRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  // Sunucudan veri silme işlemleri için generic DELETE metodu.
  Future<bool> makeDeleteRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  // Sunucudan veri çekme işlemleri için generic GET metodu.
  // Gelen JSON verisi, `getJsonCallback` ile belirtilen modele dönüştürülür.
  Future<List<T>> makeGetRequest<T>(Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    final Response response = await apiCallback;

    // Gelen JSON verisi, bir listeye dönüştürülür.
    final List<T> items = List<T>.from(
      json
          .decode(json.encode(response.data))
          .map((item) => getJsonCallback(item)),
    );

    // Durum kodu başarılıysa liste döner, aksi halde istisna fırlatılır.
    if (response.statusCode.success) {
      return items;
    } else {
      throw DioExceptions;
    }
  }
}
