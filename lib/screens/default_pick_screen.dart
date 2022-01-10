import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramdom_image/controllers/cycling_controller.dart';

class DefaultPickScreen extends StatelessWidget {
  const DefaultPickScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CyclingController cyclingController = Get.find();
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 3.0 / 2.0,
        children: [
          GestureDetector(
            onTap: () {
              cyclingController.arg.value = 0;
              Get.back();
            },
            child: Card(
              child: Image.asset('assets/study1.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              cyclingController.arg.value = 1;
              Get.back();
            },
            child: Card(
              child: Image.asset('assets/study2.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              cyclingController.arg.value = 2;
              Get.back();
            },
            child: Card(
              child: Image.asset('assets/study3.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
