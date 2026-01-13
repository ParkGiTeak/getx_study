import 'package:getx_study/getx_basic/step5/kakao_address_dto.dart';
import 'package:getx_study/getx_basic/step5/kakao_address_model.dart';

extension KakaoAddressDtoToModel on DocumentDto {
  KakaoAddressModel toModel() {
    return KakaoAddressModel(addressName: address?.addressName ?? '',
        x: double.tryParse(address?.x ?? '0.0') ?? 0.0,
        y: double.tryParse(address?.y ?? '0.0') ?? 0.0
    );
  }
}