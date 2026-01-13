import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/model/user.dart';

part 'user_search_state.freezed.dart';

@freezed
abstract class UserSearchState with _$UserSearchState {
  factory UserSearchState({
    @Default([]) List<User> users,
    @Default(false) bool isLoading,
  }) = _UserSearchState;
}
