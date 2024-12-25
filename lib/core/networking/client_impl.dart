import 'dart:io';

import 'package:dio/dio.dart';

class ClientImpl {
  final Dio dio;

  ClientImpl(this.dio);

  Future<Response> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    print("headers data :: ${dio.options.headers}");
    var response;
    try {
      response = await dio.get(url, queryParameters: queryParameters);
      print("status code is ::: ${response.statusCode}");
      return response;
    } on DioError catch (e) {
      rethrow;
    }
  }

  Future<Response> getSetPathUrl(String baseUrl, String path,
      {Map<String, dynamic>? queryParameters}) async {
    final url = '$baseUrl$path';

    print("headers data :: ${dio.options.headers}");
    var response;
    try {
      response = await dio.get(url, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      rethrow;
    }
  }

  Future<Response> post(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? data,
      bool? responseTypeIsBytes}) async {
    print("headers data :: ${dio.options.headers}");
    var response;
    try {
      if (responseTypeIsBytes ?? false) {
        response = await dio.post(url,
            data: data,
            options: Options(responseType: ResponseType.bytes),
            queryParameters: queryParameters);
      } else {
        response =
            await dio.post(url, data: data, queryParameters: queryParameters);
      }

      // print("response :: ${response}");
      return response;
    } on DioError catch (e) {

      rethrow;
    }
  }

  Future<Response> postFormData({
    required String endpoint,
    required String fileName,
    required File file,
    Function(int)? progressCallback,
  }) async {
    var response;
    try {
      FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(file.path, filename: fileName),
      });
      response = await dio.post(
        endpoint,
        data: formData,
        options: Options(contentType: "multipart/form-data"),
        onSendProgress: (count, total) {
          if (total != -1 && progressCallback != null) {
            int progressPercentage = ((count / total) * 100).round();
            progressCallback(progressPercentage);
          }
        },
      );

      return response;
    } on DioError catch (e) {

      rethrow;
    }
  }



}
