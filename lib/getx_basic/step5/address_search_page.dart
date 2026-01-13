import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step5/kakao_address_controller.dart';

class AddressSearchPage extends StatelessWidget {
  const AddressSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final KakaoAddressController kakaoAddressController = Get.put(
      KakaoAddressController(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('KakaoAddress API 통신'),
      ),
      body: Center(
        child: Obx(() {
          if (kakaoAddressController.searchText.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (val) {
                    kakaoAddressController.inputText.value = val;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    kakaoAddressController.searchText.value = kakaoAddressController.inputText.value;
                    kakaoAddressController.searchAddress();
                  },
                  child: const Text('데이터 불러오기'),
                ),
              ],
            );
          } else {
            if (kakaoAddressController.isLoading.value) {
              return CircularProgressIndicator();
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  kakaoAddressController.kakaoAddressModel.value == null
                      ? '데이터가 없습니다.'
                      : kakaoAddressController
                            .kakaoAddressModel
                            .value!
                            .addressName,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
