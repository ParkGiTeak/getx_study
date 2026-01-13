import 'package:getx_study/data/dto/users_dto.dart';
import 'package:getx_study/domain/model/user.dart';

extension UserDtoToUser on UserDto {
  User toModel() {
    return User(login: login ?? '', avatarUrl: avatarUrl ?? '');
  }
}