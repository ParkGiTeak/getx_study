import 'package:get/get.dart';
import 'package:getx_study/data/data_source/github_user_data_source.dart';
import 'package:getx_study/data/dto/users_dto.dart';

class GithubUserDataSourceImpl extends GetConnect
    implements GithubUserDataSource {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://api.github.com';
    httpClient.timeout = Duration(seconds: 10);

    super.onInit();
  }

  @override
  Future<Response> searchUsers(String query) async {
    final response = await get(
      '/search/users?q=$query',
      decoder: (data) => UsersDto.fromJson(data as Map<String, dynamic>),
    );

    return response;
  }
}
