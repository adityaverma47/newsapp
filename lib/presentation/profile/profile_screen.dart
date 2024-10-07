import 'dart:io';
import 'package:daily_news/presentation/profile/profile_Controller.dart';
import 'package:daily_news/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());

    return Scaffold(
      appBar: const CustomAppBar(height: 50,title: Text("Profile Screen"), bgColor: Colors.green,),
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.only(top: 50),
            child: Center(
              child: InkWell(
                onTap: (){
                  controller.getImage();
                },
                child: CircleAvatar(
                    radius: 55,
                    backgroundImage: controller.imagePath.isNotEmpty
                        ? FileImage(File(controller.imagePath.toString()))
                        : null,
                child: Icon(Icons.person, size: 55,),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
