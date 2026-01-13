import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step1/counter_controller.dart';
import 'package:getx_study/getx_basic/step1/navigate_example_page.dart';

class ObserverExamplePage extends StatelessWidget {
  const ObserverExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    // DI
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(counterController.title.value)),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return Text(
                '${counterController.count}',
                style: TextStyle(
                  fontSize: 50,
                  color: counterController.titleColor.value,
                ),
              );
            }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.to(NavigateExamplePage()),
              child: Text('상세페이지 이동'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
