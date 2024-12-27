extension IntegerExtension on int? {
  // HTTP durum kodunun başarı durumunu kontrol eder.
  // Başarılı durum kodları: 200, 201, 204.
  bool get success {
    if (this == 200 || this == 201 || this == 204) {
      return true;
    }
    return false;
  }
}

// Bu uzatma, bir harita (Map) için formatlama işlemini kolaylaştırır.
// Özellikle bir URL query string oluşturmak için kullanılır.
extension MapExtension on Map {
  // 'format' getter'ı, haritanın ilk anahtar-değer çifti kullanılarak bir query string oluşturur.
  // Örneğin: {'key': 'value'} -> ?key=value
  String get format {
    // Map boşsa boş bir string döner.
    if (isEmpty) {
      return "";
    } else {
      // İlk anahtar ve değer alınır.
      var firstKey = entries.first.key;
      var mapValues = entries.first.value;
      // Anahtar ve değer query string formatında döndürülür.
      return "?$firstKey=$mapValues";
    }
  }
}
