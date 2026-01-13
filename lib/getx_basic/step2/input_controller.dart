import 'package:get/get.dart';

class InputController extends GetxController {
  var name = ''.obs;

  void updateName(String val) {
    name.value = val;
  }
}