import 'package:flutter/foundation.dart' show immutable;

// Bu enum, state'in durumunu belirtmek için kullanılıyor.
// State'ler:
// - empty: Veri olmadığında.
// - loading: Veri yüklenirken.
// - failure: Bir hata olduğunda.
// - success: İşlem başarılı olduğunda.
enum Status { empty, loading, failure, success }

// Generic bir state yapısı. Bu yapı, farklı veri tipleriyle çalışabilir (T).
// State'in içinde şu özellikler var:
// - data: Yüklenen veri.
// - error: Oluşan hata mesajı.
// - status: Şu anki durum (Status enum'undan).
@immutable
class GenericCubitState<T> {
  final T? data;
  final String? error;
  final Status status;

  // Const constructor ile immutable yapı sağlanıyor.
  const GenericCubitState({this.data, this.error, required this.status});

  // Farklı durumlar için hazır factory constructor'lar:
  // - empty: Başlangıç veya veri olmadığında kullanılabilir.
  factory GenericCubitState.empty() =>
      const GenericCubitState(status: Status.empty);

  // - loading: Yükleme başladığında kullanılabilir.
  factory GenericCubitState.loading() =>
      const GenericCubitState(status: Status.loading);

  // - failure: Hata oluştuğunda hata mesajını saklar.
  factory GenericCubitState.failure(String error) =>
      GenericCubitState(error: error, status: Status.failure);

  // - success: İşlem başarılı olduğunda veriyi saklar.
  factory GenericCubitState.success(T? data) =>
      GenericCubitState(data: data, status: Status.success);
}

// Bu yapı, generic bir state yönetimi için çok uygun. Birden fazla veri tipiyle
// kullanılabilir olması sayesinde aynı yapıyı farklı sayfalarda tekrar tekrar
// kullanılabilir.