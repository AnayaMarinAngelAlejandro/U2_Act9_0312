import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          splashImage(),
          Gap(10),
          title(),
          myButton(),
        ],
      ),
    );
  }

  Widget splashImage() {
    return Container(
      height: Get.height / 1.4,
      width: Get.width,
      decoration: BoxDecoration(color: Color(0xffF0F4EF)),
    );
  }

  Widget title() {
    return Text(
      "Create your \nOwn Garden!",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }

  Widget myButton() {
    return Container();
  }
}
