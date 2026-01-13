import 'package:getx_study/domain/model/user.dart';
import 'package:getx_study/domain/repository/user_repository.dart';

import '../../core/result.dart';

class SearchUserUseCase {
  final UserRepository userRepository;

  const SearchUserUseCase({
    required this.userRepository,
  });

  Future<Result<List<User>>> execute(String query) async {
    return await userRepository.searchUsers(query);
  }
}
