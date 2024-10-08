import 'package:daily_news/presentation/login/bindings.dart';
import 'package:daily_news/presentation/login/login_screen.dart';
import 'package:daily_news/presentation/profile/bindings.dart';
import 'package:daily_news/presentation/profile/profile_screen.dart';
import 'package:daily_news/presentation/splash/bindings.dart';
import 'package:daily_news/presentation/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes{

  static  String initialRoute = '/initial_route';
  static const String loginScreen = '/login_screen';
  static const String profileScreen = '/profile_screen';

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(), // loginScreen
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(), // loginScreen
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(), // loginScreen
      bindings: [
        ProfileBinding(),
      ],
    ),
  ];


}