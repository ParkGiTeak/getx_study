import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_study/getx_basic/step2/first_page.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog Test'),),
      body: Center(
        child: ElevatedButton(onPressed: () =>
            Get.defaultDialog(
              title: '타이틀',
              middleText: '정말 이동하시겠습니까?',
              onConfirm: () => Get.to(() => const FirstPage()),
              onCancel: () => print('취소됨'),
            ), child: Text('Show Dialog!')),
      ),
    );
  }
}