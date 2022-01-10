import 'dart:math';
import 'package:get/get.dart';

class CyclingController extends GetxController {
  List<String> images = [
    'assets/study1.jpg',
    'assets/study2.jpg',
    'assets/study3.jpg'
  ];
  RxInt arg = 0.obs;
  RxBool isPick = false.obs;

  @override
  void onInit() {
    arg.value = Random().nextInt(3);
    isPick.value = false;
    super.onInit();
  }

  void cycle() {
    arg.value++;
    arg.value = arg.value % 3;
    update();
  }

  pick() {
    isPick.value = true;
    update();
  }
}
