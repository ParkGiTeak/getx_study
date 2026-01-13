import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/presentation/user_search/user_search_controller.dart';

class UserSearchScreen extends GetView<UserSearchController> {
  const UserSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX CleanArchitecture Example'),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (val) => controller.searchGitHubUsers(val),
          ),
          Expanded(
            child: Obx(
              () => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: controller.users.length,
                      itemBuilder: (context, idx) => ListTile(
                        title: Text(controller.users[idx].login),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            controller.users[idx].avatarUrl,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
