import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  // Mevcut temayı alır, böylece tüm widget'lar uygulama temasıyla uyumlu hale gelir.
  ThemeData get themeData => Theme.of(context);

  // Dinamik bir yükseklik hesaplama sağlar.
  // Ekran yüksekliğinin belirli bir oranını döndürür. Bu, responsive tasarımlar için faydalıdır.
  double dynamicHeight(double value) =>
      MediaQuery.sizeOf(context).height * value;

  // Dinamik bir genişlik hesaplama sağlar.
  // Ekran genişliğinin belirli bir oranını döndürür. Responsive tasarım için gereklidir.
  double dynamicWidht(double value) => MediaQuery.sizeOf(context).width * value;
}

/*
BaseState Kullanımının Avantajları:
1. Responsive Tasarım: 
   - `dynamicHeight` ve `dynamicWidth` metodları, cihazın ekran boyutlarına göre dinamik oranlar sağlar.
   - Böylece sabit piksel değerleri yerine esnek bir tasarım uygulanabilir.
   
2. Tekrarlayan Kodların Azaltılması:
   - Her StatefulWidget'ta ayrı ayrı tema veya ekran boyutu hesaplaması yapmaya gerek kalmaz.
   - Tek bir yapı ile tüm StatefulWidget'larda ortak işlemler kullanılabilir.

3. Okunabilirlik ve Yönetilebilirlik:
   - Ortak işlemlerin bir sınıfta toplanması, kodun daha temiz ve anlaşılır olmasını sağlar.
   - Özellikle büyük projelerde düzenli bir mimari sağlar.

4. Esneklik:
   - BaseState sınıfını genişleterek, tüm StatefulWidget'ler için özelleştirilmiş davranışlar tanımlanabilir.
*/
