import 'package:carzz/app/constants/base_url/base_url.dart';
import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio(BaseOptions(
    baseUrl: BaseUrl.signUp,
  ));
  
}
