import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramdom_image/controllers/cycling_controller.dart';
import 'package:ramdom_image/screens/default_pick_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cyclingController = Get.put(CyclingController());
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  cyclingController.images[cyclingController.arg.value],
                  height: 150,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    cyclingController.cycle();
                  },
                  child: Text('새로고침')),
              TextButton(
                  onPressed: () {
                    Get.to(DefaultPickScreen());
                  },
                  child: Text('기본 이미지에서 고르기')),
              TextButton(onPressed: () {}, child: Text('내 갤러리에서 고르기')),
            ],
          )),
    );
  }
}
