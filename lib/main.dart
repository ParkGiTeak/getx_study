import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/presentation/user_search/user_search_binding.dart';
import 'package:getx_study/presentation/user_search/user_search_screen.dart';

void main() async {
  runApp(
    GetMaterialApp(
      title: 'GetX Study',
      home: UserSearchScreen(),
      initialBinding: UserSearchBinding(),
    ),
  );
}
