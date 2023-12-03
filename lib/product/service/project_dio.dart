import 'package:dio/dio.dart';

mixin class DioMixin{
  final service = Dio(BaseOptions(baseUrl: 'https://api.exchangeratesapi.io/v1/'));
}