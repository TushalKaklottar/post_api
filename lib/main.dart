import 'package:inno_tech/export.dart';

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
      initialRoute: MyRoutes.splashRoutes(),
      getPages: MyRoutes.routes,
    );
  }
}
