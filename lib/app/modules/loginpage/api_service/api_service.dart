import 'dart:developer';
import 'dart:io';
import 'package:carzz/app/constants/base_url/base_url.dart';
import 'package:carzz/app/modules/loginpage/model/login_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Api {
  final dio = Dio(BaseOptions(baseUrl: BaseUrl.url));

  Future<LoginResponse?> loginUser(LoginModel model) async {
    
    try {
      
      // await check internet is offline or online
      final response = await dio.post(BaseUrl.login, data: model.toJson());
      if (response.statusCode == 200) {
        log(response.toString());
        return LoginResponse.fromJson(response.data);
      } else {
        return LoginResponse(message: "somthing went wrong");
      }
    } on SocketException catch (e) {
      debugPrint(e.toString());
    } catch (e) {
      log(e.toString());
      // if (e is DioError) {
      //   if (e.response?.data == null) {
      //     return
      //   }
      // }
    }
    return null;
  }
}
