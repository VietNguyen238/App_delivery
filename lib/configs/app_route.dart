import 'package:app_giao_hang/pages/main_page.dart';
import 'package:app_giao_hang/pages/onboarding/index.dart';

class AppRoutes {
  static final pages = {
    '/spl': (context) => const MainPage(),
    '/onboarding': (context) => const Onboarding(),
  };
  static const spl = '/spl';
  static const onboarding = '/onboarding';
}
