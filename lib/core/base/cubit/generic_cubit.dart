import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/init/network/api_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// API işlemlerini belirtmek için enum kullanımı:
// - select: Veri çekme işlemi.
// - create: Veri oluşturma işlemi.
// - update: Veri güncelleme işlemi.
// - delete: Veri silme işlemi.
enum ApiOperation { select, create, update, delete }

// Generic Cubit sınıfı:
// Bu sınıf, Cubit tabanlı bir state yönetim sistemi sağlar.
class GenericCubit<T> extends Cubit<GenericCubitState<T>> {
  // Başlangıç state'i initial durumunda ayarlanır.
  GenericCubit(GenericCubitState genericCubitState)
      : super(GenericCubitState.initial());

  // Hangi API işleminin yapıldığını takip etmek için bir değişken.
  ApiOperation operation = ApiOperation.select;

  // API sonuçlarını kontrol etmek için bir yardımcı fonksiyon:
  // - Başarısızsa: Hata mesajını yayınlar.
  // - Başarılıysa: Veriyi (veya boş bir veri) yayınlar.
  _checkFailureOrSuccess(ApiResult failureOrSuccess) {
    failureOrSuccess.when(
      failure: (String failure) {
        emit(GenericCubitState.failure(failure));
      },
      success: (_) {
        emit(GenericCubitState.success(null));
      },
    );
  }

  // API işlemlerini şablon olarak yönetmek için bir yardımcı fonksiyon:
  // - loading state'i yayar.
  // - API çağrısını bekler.
  // - Gelen sonucu `_checkFailureOrSuccess` ile işler.
  _apiOperationTemplate(Future<ApiResult> apiCallback) async {
    emit(GenericCubitState.loading());
    ApiResult failureOrSuccess = await apiCallback;
    _checkFailureOrSuccess(failureOrSuccess);
  }

  // CRUD işlemleri için metodlar:
  // - createItem: Yeni veri oluşturma işlemi.
  Future<void> createItem(Future<ApiResult> apiCallback) async {
    operation = ApiOperation.create;
    _apiOperationTemplate(apiCallback);
  }

  // - updateItem: Var olan bir veriyi güncelleme işlemi.
  Future<void> updateItem(Future<ApiResult> apiCallback) async {
    operation = ApiOperation.update;
    _apiOperationTemplate(apiCallback);
  }

  // - deleteItem: Bir veriyi silme işlemi.
  Future<void> deleteItem(Future<ApiResult> apiCallback) async {
    operation = ApiOperation.delete;
    _apiOperationTemplate(apiCallback);
  }

  // - getItems: Veri çekme işlemi (Liste döndürür).
  Future<void> getItem(Future<ApiResult<T>> apiCallback) async {
    operation = ApiOperation.select;
    emit(GenericCubitState.loading());

    ApiResult<T> failureOrSuccess = await apiCallback;

    failureOrSuccess.when(
      failure: (String failure) {
        emit(GenericCubitState.failure(failure));
      },
      success: (T data) {
        emit(GenericCubitState.success(data));
      },
    );
  }
}

// Bu yapı, API'den veri çekerken ya da veriyle ilgili işlemler yaparken
// oluşabilecek durumları temiz ve düzenli bir şekilde yönetmenizi sağlar.
// Aynı zamanda reusable olduğu için projede tekrar tekrar kullanılabilir.
// Bu sayede her sayfa için farklı bir Cubit yazmak yerine bu genel yapıyı
// kullanabilirsiniz.
