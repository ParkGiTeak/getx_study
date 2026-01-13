import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step2/input_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final String receiveName = Get.arguments;
    final InputController inputController = Get.find<InputController>();

    return Scaffold(
      appBar: AppBar(title: const Text('결과 페이지')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${inputController.name.value}님, 환영합니다!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('뒤로 가기'),
            ),
          ],
        ),
      ),
    );
  }
}
