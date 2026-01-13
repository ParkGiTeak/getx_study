import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step2/input_controller.dart';
import 'package:getx_study/getx_basic/step2/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final InputController inputController = Get.put(InputController());
    return Scaffold(
      appBar: AppBar(
        title: Text('입력 및 이동 예제'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onChanged: (val) => inputController.updateName(val),
              decoration: const InputDecoration(labelText: '이름을 입력하세요.'),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text('입력 중인 이름: ${inputController.name.value}')),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => SecondPage(),
                  arguments: inputController.name.value,
                );
              },
              child: const Text(
                '이름 전달하며 이동하기',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
