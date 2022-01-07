import 'dart:math';
import 'package:get/get.dart';

class CyclingController extends GetxController {
  List<String> images = [
    'assets/study1.jpg',
    'assets/study2.jpg',
    'assets/study3.jpg'
  ];
  RxInt arg = 0.obs;

  @override
  void onInit() {
    arg.value = Random().nextInt(3);
    super.onInit();
  }

  void cycle() {
    arg.value++;
    arg.value = arg.value % 3;
    print(arg.value);
    update();
  }
}
