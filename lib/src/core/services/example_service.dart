import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tabeldatafluttertemplate/src/configs/url.dart';
import 'package:tabeldatafluttertemplate/src/core/models/example_model.dart';
import 'package:tabeldatafluttertemplate/src/utils/dio_logging_interceptors.dart';
import 'package:tabeldatafluttertemplate/src/utils/shared_preferences_helper.dart';

class ExampleService {
  final Dio _dio = new Dio();

  final clientId = "resource-postgresql96";
  final clientSecret = "123456";

  ExampleService() {
    _dio.options.baseUrl = UriApi.baseApi;
    _dio.interceptors.add(DioLoggingInterceptors(_dio));
  }

  /// @return map
  /// Post Login
  Future<Either<String, AuthenticationModel>> postLogin(String username, String password) async {
    await SharedPreferencesHelper.setAccessToken(null);

    var params = {
      "username": username,
      "password": password,
      "grant_type": "password",
    };

    try {
      Response response = await _dio.post(
        "/oauth/token",
        data: FormData.fromMap(params),
        options: Options(
            headers: {
              'Authorization': 'Basic ${base64Encode(utf8.encode('$clientId:$clientSecret'))}'
            }
        ),
      );
      return Right(authenticationModelFromJson(json.encode(response.data)));
    } on DioError catch(error) {
      return Left(error.response.data.toString());
    }
  }

}