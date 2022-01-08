import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramdom_image/controllers/cycling_controller.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      cyclingController.cycle();
                    },
                    icon: const Icon(Icons.change_circle),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
