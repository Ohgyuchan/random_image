import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramdom_image/controllers/cycling_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CyclingController());
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  controller.images[controller.arg.value],
                  height: 150,
                  fit: BoxFit.fill,
                ),
              ),
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
          )),
    );
  }
}
