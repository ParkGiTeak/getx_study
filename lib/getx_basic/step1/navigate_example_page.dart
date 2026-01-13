import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step1/counter_controller.dart';

class NavigateExamplePage extends StatelessWidget {
  const NavigateExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'DetailPage Current Count: ${Get.find<CounterController>().count}',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          ElevatedButton(onPressed: Get.back, child: Icon(Icons.arrow_back)),
        ],
      ),
    );
  }
}
