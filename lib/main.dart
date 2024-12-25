import 'package:bloc_demo/app.dart';
import 'package:bloc_demo/core/helpers/global_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  blocProvider() {
    return Container();
  }
  // await GlobalInit().globalInitializer();

  // await GetStorage.init();

  runApp(blocProvider());
}
