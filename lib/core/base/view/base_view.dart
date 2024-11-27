import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  const BaseView({
    super.key,
    required this.viewModel, // Ekranda kullanılacak ViewModel'i alır.
    required this.onPageBuilder, // Sayfa yapısını oluşturacak widget fonksiyonu.
    this.onModelReady, // ViewModel hazır olduğunda çalışacak fonksiyon.
    this.onDispose, // Sayfa kapanırken çalışacak fonksiyon.
  });

  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final Function(T model)? onModelReady;
  final Function? onDispose;

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    // Eğer bir 'onModelReady' fonksiyonu tanımlandıysa, sayfa yüklenirken çalıştırılır.
    if (widget.onModelReady != null) widget.onModelReady!(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    // Eğer bir 'onDispose' fonksiyonu tanımlandıysa, sayfa kapanırken çalıştırılır.
    if (widget.onDispose != null) widget.onDispose!();
  }

  @override
  Widget build(BuildContext context) {
    // Sayfa yapısı, context ve ViewModel ile oluşturulur.
    return widget.onPageBuilder(context, widget.viewModel);
  }
}

/*
BaseView Kullanımının Avantajları:
1. Merkezi Yönetim:
   - Tüm sayfa yapıları için ortak bir temel sağlar.
   - Her yeni ekran için tekrarlayan yapı kurmak yerine, bu sınıf genişletilerek esneklik kazanılır.

2. Daha Temiz Kod:
   - ViewModel'i hazır hale getirme (`onModelReady`) ve sayfa kapatma işlemleri (`onDispose`) kolayca yönetilir.
   - Sayfa ile ilgili genel davranışlar merkezi bir yerde toplanır.

3. Reusable (Yeniden Kullanılabilir) Yapı:
   - Farklı ViewModel'ler ile çalışabilecek şekilde esnek tasarlanmıştır.
   - Herhangi bir ekranda kullanıma uygundur.

4. Test Edilebilirlik:
   - Sayfanın yapısını oluşturan mantık (`onPageBuilder`) ve davranışlar dışarıdan alınarak, bağımsız bir şekilde test edilebilir.

5. Sadelik:
   - initState ve dispose gibi yaşam döngüsü işlemleri her sayfa için ayrı ayrı yazılmak zorunda kalmaz.
   - Bu sınıf sayesinde ViewModel'in yaşam döngüsü kolayca yönetilir.
*/
