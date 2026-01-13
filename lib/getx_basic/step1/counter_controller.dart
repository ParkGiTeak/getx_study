import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var title = 'Count App'.obs;
  var titleColor = Colors.black.obs;

  void increment() {
    count++;

    if (count.value >= 10) {
      titleColor.value = Colors.red;
    } else {
      titleColor.value = Colors.black;
    }
  }

  void changeTitle(String newTitle) {
    title.value = newTitle;
  }
}
