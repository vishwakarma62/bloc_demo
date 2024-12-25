import 'package:bloc_demo/core/networking/api_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio getDioInstance() {
  BaseOptions options = BaseOptions(
      baseUrl: 'https://api.realworld.io/api/profiles',
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000 // 60 seconds
      );

  Dio dio = Dio(options);
  dio.interceptors.add(CustomErrorHandlerInterceptor());

  if (kDebugMode) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
      compact: true,
      maxWidth: 90,
    ));
  }

  return dio;
}
