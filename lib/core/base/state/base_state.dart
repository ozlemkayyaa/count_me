import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);
  double dynamicHeight(double value) =>
      MediaQuery.sizeOf(context).height * value;
  double dynamicWidht(double value) => MediaQuery.sizeOf(context).width * value;

  // Bloc'a erişmek için bir yardımcı işlev (isteğe bağlı)
  TBloc readBloc<TBloc>() => context.read<TBloc>();

  /// Geri gidilebilir mi kontrolü
  bool canGoBack() => false;

  /// Grup içi önceki sayfaya gitme işlemi
  void goToPreviousPage() {}

  int get currentPage => 0; // Varsayılan, gruplar kendisi override eder
}
