import 'package:get/get.dart';
import 'package:getx_study/domain/usecase/search_users_usecase.dart';

import '../../core/result.dart';
import '../../domain/model/user.dart';

class UserSearchController extends GetxController {
  final SearchUserUseCase searchUserUseCase;

  RxList<User> users = List<User>.empty().obs;
  RxBool isLoading = false.obs;

  UserSearchController({
    required this.searchUserUseCase,
  });

  void searchGitHubUsers(String query) async {
    if (query.isEmpty) return;

    isLoading.value = true;
    try {
      Result<List<User>> result = await searchUserUseCase.execute(query);
      switch (result) {
        case Success<List<User>>():
          users.value = result.data;
        case Error<List<User>>():
          Get.snackbar('Error', result.e);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
