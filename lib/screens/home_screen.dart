import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ramdom_image/controllers/cycling_controller.dart';
import 'package:ramdom_image/screens/default_pick_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cyclingController = Get.put(CyclingController());
    final ImagePicker _picker = ImagePicker();
    XFile? pickedFile;

    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: pickedFile == null
                    ? Image.asset(
                        cyclingController.images[cyclingController.arg.value],
                        height: 150,
                        fit: BoxFit.fill,
                      )
                    : Image.file(File(pickedFile!.path)),
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
              TextButton(
                  onPressed: () async {
                    pickedFile = await _picker.pickImage(
                      source: ImageSource.gallery,
                    );
                  },
                  child: Text('내 갤러리에서 고르기')),
            ],
          )),
    );
  }
}
