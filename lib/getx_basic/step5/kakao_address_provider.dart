import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step5/kakao_address_dto.dart';

class KakaoAddressProvider extends GetConnect {
  final String _kakaoKey = dotenv.env['KAKAO_LOCAL_API_KEY']!;

  @override
  void onInit() {
    httpClient.baseUrl = 'https://dapi.kakao.com';
    httpClient.timeout = const Duration(seconds: 10);
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['Authorization'] = 'KakaoAK $_kakaoKey';
      return request;
    });
    super.onInit();
  }

  Future<Response> getQuery(String query) => get(
    '/v2/local/search/address.json?query=$query',
    decoder: (data) => KakaoAddressDto.fromJson(data as Map<String, dynamic>),
  );
}
