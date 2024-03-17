import 'package:inno_tech/export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/api.png',
      nextScreen: HomePage(),
      splashIconSize: 100,
      duration: 1000,
      splashTransition: SplashTransition.sizeTransition,
    );
  }
}
