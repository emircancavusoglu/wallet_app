import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/service/model/world_bank_model.dart';

class WorldBankView extends StatefulWidget {
  const WorldBankView({Key? key}) : super(key: key);

  @override
  State<WorldBankView> createState() => _WorldBankViewState();
}

class _WorldBankViewState extends State<WorldBankView> {
  List<WorldBankModel>? _items;
  late final Dio dio;
  final _baseUrl = 'https://search.worldbank.org/api/v2/wds?format=json&qterm=wind%20turbine&fl=docdt,count';
  bool isLoading = false;
  void changeLoading(){
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    dio = Dio(BaseOptions(baseUrl: _baseUrl));
    super.initState();
    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    try {
      final response = await dio.get(_baseUrl);
      if (response.statusCode == 200) {
        final List<dynamic> _datas = response.data['documents'] ?? [];
        _items = _datas.map((e) => WorldBankModel.fromJson(e)).toList();
      }
    } catch (e) {
      print("Error fetching data: $e");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_items?[index].os?.toString() ?? ''),
          );
        },
      ),
    );
  }
}
