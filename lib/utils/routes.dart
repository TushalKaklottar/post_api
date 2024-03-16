import 'package:get/get_navigation/src/routes/get_route.dart';

import '../view/screen/home_screen.dart';

class MyRoutes {
  static const String _home = "/";
  static const String _detail = "/detail";

  static String homeRoutes() => _home;
  static String detailsRotes() => _detail;

  static List<GetPage> routes = [
    GetPage(
      name: _home,
      page: () => HomePage(),
    ),
  ];
}
