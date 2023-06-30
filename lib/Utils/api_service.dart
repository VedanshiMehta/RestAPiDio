import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  Future<Response?> getAsync({required String url}) async {
    try {
      return await _dio.get(url);
    } on DioException catch (ex) {
      throw "error: $ex";
    }
  }
}
