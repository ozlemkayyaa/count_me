import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);
  double dynamicHeight(double value) =>
      MediaQuery.sizeOf(context).height * value;
  double dynamicWidht(double value) => MediaQuery.sizeOf(context).width * value;

  // State yönetim sistemi (Cubit veya Bloc) fark etmeksizin erişim için:
  TState readState<TState>() => context.read<TState>();

  /// Geri gidilebilir mi kontrolü
  bool canGoBack() => false;

  /// Grup içi önceki sayfaya gitme işlemi
  void goToPreviousPage() {}

  int get currentPage => 0; // Varsayılan, gruplar kendisi override eder
}
