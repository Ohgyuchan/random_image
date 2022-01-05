import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramdom_image/controllers/cycling_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CyclingController());
    return Scaffold(
      body: Column(
        children: [
          Image.asset(controller.images[controller.arg.value]),
          const SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () {
              controller.cycle();
            },
            icon: const Icon(Icons.change_circle),
          )
        ],
      ),
    );
  }
}
