import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:getx_study/getx_basic/step5/address_search_page.dart';

void main() async {
  await dotenv.load(fileName: 'api_key.env');

  runApp(
    GetMaterialApp(
      title: 'GetX Study',
      home: AddressSearchPage(),
    ),
  );
}
