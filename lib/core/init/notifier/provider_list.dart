import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../navigation/navigation_service.dart';
import '../theme/app_theme.dart';
import 'theme_notifier.dart';

class ApplicationProviders extends AppTheme {
  static ApplicationProviders? _instance;
  static ApplicationProviders get instance {
    _instance ??= ApplicationProviders._init();
    return _instance!;
  }

  ApplicationProviders._init();

  List<SingleChildWidget> singleItems = [];

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(create: (context) => ThemeNotifier()),
    Provider.value(value: NavigationService.instance),
  ];

  List<SingleChildWidget> uiChangeItems = [];
}
