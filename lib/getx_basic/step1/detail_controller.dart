import 'package:get/get.dart';

class DetailController extends GetxController {
  var name = ''.obs;

  void updateName(String val) {
    name.value = val;
  }
}