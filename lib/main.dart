import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

void main() async {
  runApp(
    GetMaterialApp(
      title: 'GetX Study',
      home: AddressSearchPage(),
    ),
  );
}
