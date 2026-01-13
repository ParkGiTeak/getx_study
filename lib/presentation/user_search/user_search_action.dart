import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search_action.freezed.dart';

@freezed
sealed class UserSearchAction<T> with _$UserSearchAction<T> {
  const factory UserSearchAction.searchUsers(String query) = SearchUsers;
}