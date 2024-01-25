import 'package:app_giao_hang/pages/home/index.dart';
import 'package:app_giao_hang/pages/login/index.dart';
import 'package:app_giao_hang/pages/onboarding/index.dart';
import 'package:app_giao_hang/pages/splash_screen.dart';

class AppRoutes {
  static final pages = {
    '/onboarding': (context) => const Onboarding(),
    '/splashScreen': (context) => const SplashScreen(),
    '/mainPage': (context) => const MainPage(),
    '/login': (context) => const Login(),
  };
  static const onboarding = '/onboarding';
  static const mainPage = '/mainPage';
  static const splashScreen = '/splashScreen';
  static const login = '/login';
}
