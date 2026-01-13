import 'package:get/get.dart';

class UserController extends GetxController {
  var isLoading = false.obs;
  var userData = ''.obs;

  Future<void> fetchUser() async {
    try {
      isLoading.value = true;

      await Future.delayed(const Duration(seconds: 2));

      userData.value = '서버에서 가져온 사용자: PGT';
    } catch (e) {
      Get.snackbar('에러', '데이터를 가져오지 못했습니다.');
    } finally {
      isLoading.value = false;
    }
  }
}
