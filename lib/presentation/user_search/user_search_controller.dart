import 'package:get/get.dart';
import 'package:getx_study/domain/usecase/search_users_usecase.dart';
import 'package:getx_study/presentation/user_search/user_search_state.dart';

import '../../core/result.dart';
import '../../domain/model/user.dart';

class UserSearchController extends GetxController {
  final SearchUserUseCase searchUserUseCase;
  final Rx<UserSearchState> _state = UserSearchState().obs;

  UserSearchState get state => _state.value;

  UserSearchController({
    required this.searchUserUseCase,
  });

  void searchGitHubUsers(String query) async {
    if (query.isEmpty) return;

    _state.value = _state.value.copyWith(isLoading: true);

    try {
      Result<List<User>> result = await searchUserUseCase.execute(query);
      switch (result) {
        case Success<List<User>>():
          _state.value = _state.value.copyWith(users: result.data);
        case Error<List<User>>():
          Get.snackbar('Error', result.e);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      _state.value = _state.value.copyWith(isLoading: false);
    }
  }
}
