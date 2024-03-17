import 'package:inno_tech/export.dart';

class MyRoutes {
  static const String _splash = "/";
  static const String _home = "/home";
  static const String _dataBase = "/database";

  static String splashRoutes() => _splash;
  static String homeRoutes() => _home;
  static String dataBaseRoutes() => _dataBase;

  static List<GetPage> routes = [
    GetPage(
      name: _splash,
      page: () => SplashScreen(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: _home,
      page: () => HomePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _dataBase,
      page: () => DataBase(),
      transition: Transition.circularReveal,
    )
  ];
}
