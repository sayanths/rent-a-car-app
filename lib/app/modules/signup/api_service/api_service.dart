import 'dart:developer';
import 'package:carzz/app/constants/base_url/base_url.dart';
import 'package:carzz/app/modules/signup/model/sign_up.dart';

import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio(BaseOptions(
    baseUrl: BaseUrl.url,
  ));
  Future<SignUpModel?> signUpUser(SignUpModel signUpData) async {
    try {
      final response =
          await dio.post(BaseUrl.signUp, data: signUpData.toJson());
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return SignUpModel.fromJson(response.data);
      }
    } catch (e) {
       log(e.toString());
    }
    return null;
  }
}
