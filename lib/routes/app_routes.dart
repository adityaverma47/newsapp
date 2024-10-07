import 'package:daily_news/presentation/login/login_screen.dart';
import 'package:daily_news/presentation/profile/bindings.dart';
import 'package:get/get.dart';

class AppRoutes{

  static const String loginScreen = '/login_screen';
  static const String profileScreen = '/profile_screen';

  static List<GetPage> pages = [
    GetPage(
      name: profileScreen,
      page: () => const LoginScreen(), // loginScreen
      bindings: [
        ProfileBinding(),
      ],
    ),
  ];


}