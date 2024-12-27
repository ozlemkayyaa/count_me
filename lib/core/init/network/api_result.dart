import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

// API sonuçlarını yönetmek için generic bir yapı.
// Freezed kullanılarak hem immutable hem de pattern matching sağlanıyor.
@freezed
class ApiResult<T> with _$ApiResult<T> {
  // API'den başarılı bir sonuç döndüğünde:
  // - data: Gelen veri.
  const factory ApiResult.success(T data) = Success<T>;

  // API'den bir hata döndüğünde:
  // - error: Hata mesajı.
  const factory ApiResult.failure(String error) = Failure;
}

// Bu yapı sayesinde API çağrılarının sonuçlarını başarılı ya da başarısız
// olarak ayrılır ve daha temiz bir kontrol mekanizması sağlanır.