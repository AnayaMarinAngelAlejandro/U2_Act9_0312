import 'package:anayaact9/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

//Angel del futuro, te quedaste en el minuto 17:10 del video.
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
    return ShapeOfView(
      shape: ArcShape(
          direction: ArcDirection.Outside,
          height: 20,
          position: ArcPosition.Bottom),
      child: Container(
        height: Get.height / 1.5,
        width: Get.width,
        decoration: BoxDecoration(color: Color(0xff757575)),
        child: Image.asset("assets/WWE-Logo.png"),
      ),
    );
  }

  Widget title() {
    return Text(
      "Crea tu \nExperiencia!",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }

  Widget myButton() {
    return GestureDetector(
      onTap: () {
        Get.to(DashboardScreen());
      },
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
            color: Color(0xffcd1d17), borderRadius: BorderRadius.circular(42)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Empezar",
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
      ),
    );
  }
}
