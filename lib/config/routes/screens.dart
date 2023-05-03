import 'package:get/get.dart';
import 'package:nexo_project/config/bindings/binding.dart';
import 'package:nexo_project/config/routes/routes_name.dart';
import 'package:nexo_project/view/edit_contact_screen.dart';
import 'package:nexo_project/view/my_home_screen.dart';
import 'package:nexo_project/view/onboarding_screen/screen/onboarding_screen.dart';
import 'package:nexo_project/view/splash_screen.dart';

/// Application's pages
class Screens {
  // private constructor
  /// It does not allow you to create a new instance
  Screens._();

  static List<GetPage<dynamic>> screens = [
    GetPage(
      name: RoutesName.initialRoute,
      page: () => const HomeScreen(),
      binding: NexoBinding()
    ),
    GetPage(
      name: RoutesName.editContactScreen,
      page: () => EditContactScreen(),
      binding: NexoBinding()
    ),
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RoutesName.onboardingScreen,
      page: () => const OnboardingScreen(),
    )
  ];
}