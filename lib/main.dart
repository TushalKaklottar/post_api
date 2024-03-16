import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:inno_tech/utils/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes(),
      getPages: MyRoutes.routes,
    );
  }
}
