import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.snackbar(
            '알림',
            '성공적으로 이동합니다.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.black54,
            colorText: Colors.white,
          ),
          child: Text(
            'Show Snackbar!',
          ),
        ),
      ),
    );
  }
}
