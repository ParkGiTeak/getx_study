import 'package:get/get.dart';

abstract interface class GithubUserDataSource {
  Future<Response> searchUsers(String query);
}