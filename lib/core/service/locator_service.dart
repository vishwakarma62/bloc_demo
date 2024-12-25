

import 'package:bloc_demo/core/networking/client_impl.dart';
import 'package:bloc_demo/core/networking/client_setup.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<ClientImpl>(() => ClientImpl(getDioInstance()));
  // locator.registerLazySingleton<StoreService>(() => StoreService());
}
