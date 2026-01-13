import 'package:getx_study/core/result.dart';

import '../model/user.dart';

abstract interface class UserRepository {
  Future<Result<List<User>>> searchUsers(String query);
}