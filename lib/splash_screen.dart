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
          const Gap(20),
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
      child: Image.asset("assets/WWE-Logo.png"),
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
    return Container(
      height: 52,
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      decoration: BoxDecoration(
          color: Color(0xff475E3E), borderRadius: BorderRadius.circular(42)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Let's start",
              style: TextStyle(fontSize: 18, color: Colors.white)),
          Gap(10),
          Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.8),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 18,
              ))
        ],
      ),
    );
  }
}
