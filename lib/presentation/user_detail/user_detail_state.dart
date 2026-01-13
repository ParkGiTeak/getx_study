import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/user.dart';

part 'user_detail_state.freezed.dart';

@freezed
abstract class UserDetailState with _$UserDetailState {
  factory UserDetailState({
    @Default(null) User? user,
    @Default([]) List<String> repo,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _UserDetailState;
}
