import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_address_model.freezed.dart';

@freezed
abstract class KakaoAddressModel with _$KakaoAddressModel {
  const factory KakaoAddressModel({
    required String addressName,
    required double x,
    required double y,
  }) = _KakaoAddressModel;
}