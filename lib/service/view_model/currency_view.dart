import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../model/currency_model.dart';

class CurrencyView extends StatefulWidget {
  const CurrencyView({Key? key}) : super(key: key);

  @override
  State<CurrencyView> createState() => _CurrencyViewState();
}

class _CurrencyViewState extends State<CurrencyView> {
  late final Dio _dio;
  final _baseUrl = "https://api.exchangeratesapi.io/v1/";
  List<CurrencyModel>? _items;
  bool isLoading = false;
  void changeLoading(){
    setState(() {
      isLoading = !isLoading;
    });
   }

  @override
  void initState(){
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    fetchData();
  }

  Future<void> fetchData() async {
    changeLoading();
    final response = await _dio.get("v1/");
    if(response.statusCode == 200){
      final _datas = response.data;
      if(_datas is List){
        setState(() {
          _items = _datas.map((e)
          => CurrencyModel.fromJson(e)).toList();
        });
        }
    }
    changeLoading();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading ? const CircularProgressIndicator(color: Colors.grey,)
              : const SizedBox.shrink(),
        ],
      ),
      body: ListView.builder(
        itemCount: _items?.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(_items?[index].allow ?? ""),
          subtitle: Text(_items?[index].contentType ?? ""),
        );
      },)
    );
  }
}
