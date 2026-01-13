import 'package:get/get.dart';
import 'package:getx_study/data/data_source/github_user_data_source.dart';
import 'package:getx_study/data/data_source/github_user_data_source_impl.dart';
import 'package:getx_study/data/repository/user_repository_impl.dart';
import 'package:getx_study/domain/repository/user_repository.dart';
import 'package:getx_study/domain/usecase/search_users_usecase.dart';
import 'package:getx_study/presentation/user_search/user_search_controller.dart';

class UserSearchBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource
    Get.lazyPut<GithubUserDataSource>(() => GithubUserDataSourceImpl());

    // Repository
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(
        githubDataSource: Get.find<GithubUserDataSource>(),
      ),
    );

    // UseCase
    Get.lazyPut<SearchUserUseCase>(
      () => SearchUserUseCase(userRepository: Get.find<UserRepository>()),
    );

    // Controller
    Get.lazyPut<UserSearchController>(
      () => UserSearchController(
        searchUserUseCase: Get.find<SearchUserUseCase>(),
      ),
    );
  }
}
