import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step5/kakao_address_mapper.dart';
import 'package:getx_study/getx_basic/step5/kakao_address_model.dart';
import 'package:getx_study/getx_basic/step5/kakao_address_provider.dart';
import 'kakao_address_dto.dart';

class KakaoAddressController extends GetxController {
  RxString searchText = ''.obs;
  RxString inputText = ''.obs;
  RxBool isLoading = false.obs;
  Rxn<KakaoAddressModel> kakaoAddressModel = Rxn<KakaoAddressModel>();
  KakaoAddressProvider kakaoAddressProvider = Get.put<KakaoAddressProvider>(
    KakaoAddressProvider(),
  );

  Future<void> searchAddress() async {
    try {
      isLoading.value = true;
      Response response = await kakaoAddressProvider.getQuery(searchText.value);

      if (response.status.isOk) {
        KakaoAddressDto kakaoAddressDto = response.body;
        if (kakaoAddressDto.documents != null &&
            kakaoAddressDto.documents!.isNotEmpty) {
          kakaoAddressModel.value = kakaoAddressDto.documents!.first.toModel();
        }
      }
    } catch (e) {
      print('Address 조회 실패 error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
