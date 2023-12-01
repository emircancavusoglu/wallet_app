import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../model/currency_model.dart';

class CurrencyView extends StatefulWidget {
  const CurrencyView({Key? key}) : super(key: key);

  @override
  State<CurrencyView> createState() => _CurrencyViewState();
}

class _CurrencyViewState extends State<CurrencyView> {
  List<CurrencyModel>? _items;
  late final Dio dio;
  bool isLoading = false;
  void changeLoading(){
    isLoading = !isLoading;
  }

  @override
  void initState(){
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await Dio().get("rapidapi.com");
    if(response.statusCode == 200){
      final _datas = response.data;
      if(_datas is List){
        setState(() {
          _items = _datas.map((e) => CurrencyModel.fromJson(e)).toList();
        });
        }
    }
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
          title: Text(_items?[index].vary ?? ""),
        );
      },)
    );
  }
}
