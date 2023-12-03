import 'package:dio/dio.dart';

class DioMixin{
  final service = Dio(BaseOptions(baseUrl: 'https://api.exchangeratesapi.io/v1/'));
}