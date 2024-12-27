// API yapılandırma sınıfı: API ile ilgili sabitleri ve ayarları içerir.
class ApiConfig {
  // Private constructor: Bu sınıfın örneklenmesini önler.
  ApiConfig._();

  static const token = ""; // API kimlik doğrulama token'i.
  static const String baseUrl = ""; // API temel URL'si.

  // Zaman aşımı ayarları:
  // - receiveTimeout: API'den yanıt alma süresi.
  // - connectionTimeout: API'ye bağlanma süresi.
  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);

  // static const String users = '';
  // static const String posts = '';
  // static const String comments = '';
  // static const String todos = '';

  // HTTP istekleri için başlıklar (headers):
  // Authorization ve içerik türü (JSON).
  static const header = {
    'Authorization': 'Bearer $token',
    'content-Type': 'application/json',
  };
}
