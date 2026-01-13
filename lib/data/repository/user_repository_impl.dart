import 'package:getx_study/core/result.dart';
import 'package:getx_study/data/data_source/github_user_data_source.dart';
import 'package:getx_study/data/dto/users_dto.dart';
import 'package:getx_study/data/mapper/user_mapper.dart';
import 'package:getx_study/domain/model/user.dart';

import '../../domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final GithubUserDataSource githubDataSource;

  const UserRepositoryImpl({
    required this.githubDataSource,
  });

  @override
  Future<Result<List<User>>> searchUsers(String query) async {
    final response = await githubDataSource.searchUsers(query);
    if (response.status.isOk && response.body != null) {
      final UsersDto usersDto = response.body;
      final userList =
          usersDto.items?.map((e) => e.toModel()).toList() ?? List.empty();

      if (userList.isNotEmpty) {
        return Result.success(usersDto.items!.map((e) => e.toModel()).toList());
      } else {
        return Result.error('검색 결과가 없습니다.');
      }
    } else {
      return Result.error('검색 결과가 없습니다.');
    }
  }
}
