import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_controller.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('비동기 테스트'),
      ),
      body: Center(
        child: Obx(() {
          if (userController.isLoading.value) {
            return CircularProgressIndicator();
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userController.userData.value.isEmpty
                    ? '데이터가 없습니다.'
                    : userController.userData.value,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => userController.fetchUser(),
                child: const Text('데이터 불러오기'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
