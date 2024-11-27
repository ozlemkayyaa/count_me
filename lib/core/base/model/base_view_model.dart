import 'package:flutter/material.dart';

// Tüm ViewModel sınıflarının temelini oluşturur.
// Amaç, ViewModel'lerde ortak olarak kullanılacak özellikleri ve metotları burada tanımlayarak, kod tekrarını önlemek ve daha düzenli bir yapı sağlamaktır.
abstract class BaseViewModel {
  // BuildContext: Ekran veya widget'lara erişim sağlamak için kullanılır.
  BuildContext? context;

  // Ağ işlemleri için gerekli olan bir servis örneği.
  // ICoreDio coreDio = NetworkManager.instance.coreDio;

  void setContext(BuildContext context);

  // ViewModel'in başlatılması gereken işlemleri burada tanımlamak için kullanılacak metod.
  void init();
}

/* 
BaseViewModel kullanmanın avantajları:
1. **Ortak Yapı**:
   - Tüm ViewModel sınıflarında ortak özellik ve metotları barındırarak kod tekrarını önler.
   - Örneğin, `context` veya `init` gibi her ViewModel'de sıkça kullanılan özellikler burada tanımlanır.

2. **Esneklik ve Genişletilebilirlik**:
   - Yeni bir ViewModel oluştururken `BaseViewModel` sınıfından türetildiği için
     temel özellikleri doğrudan miras alır. Bu, geliştirme sürecini hızlandırır ve daha düzenli bir yapı sağlar.

3. **Merkezi Kontrol**:
   - Uygulama genelinde yapılacak değişiklikler tek bir noktada yönetilebilir. 
   - Örneğin, `context` kullanımını değiştirmek gerektiğinde yalnızca `BaseViewModel` üzerinde çalışmanız yeterli olur.

4. **Test Edilebilirlik**:
   - Soyut bir yapı sağladığı için test yazarken bağımlılıkları kolayca taklit edebilir (mock).
   - Bu, testlerin daha modüler ve bağımsız olmasını sağlar.

5. **Kolay Entegrasyon**:
   - Daha karmaşık işlemler (örneğin, ağ istekleri veya tema değişiklikleri gibi) burada tanımlanabilir
     ve ViewModel'lerde herhangi bir ek kod yazmadan kullanılabilir.

Sonuç olarak, BaseViewModel kullanımı, MVVM (Model-View-ViewModel) yapısını benimseyen Flutter projelerinde
temiz kod, daha az tekrar ve merkezi bir yapı sağlamak için büyük bir avantajdır.
*/
