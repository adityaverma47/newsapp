import 'package:daily_news/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              // Container(
              //   // margin: EdgeInsets.symmetric(vertical: 80.h),
              //   height: 150.h,
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("assets/images/tv_news.png")),
              //   ),
              // ),
              SizedBox(height: 40.h,),
              Container(
                width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: CustomTextFormField(
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
