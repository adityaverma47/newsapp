import 'package:daily_news/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/utils/dismiss_keyboard.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child){
        return const DismissKeyboard(
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Daily_News",
            home: SplashScreen(),
          ),
        );
      },

    );
  }
}
