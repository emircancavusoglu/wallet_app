import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/constants/http_path.dart';
import 'package:wallet_app/service/post_model.dart';

class TopUp extends StatefulWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  void initState(){
    super.initState();
    fetchData();
  }
  final String name = "Emircan";
  bool isLoading = false;
  void changeIsLoading(){
    isLoading = !isLoading;
  }
  Future<void>fetchData() async{
    final response = await Dio().get(ServicePaths.httpPath);
    if(response.statusCode == HttpStatus.ok){
      final _datas = response.data;

      if(_datas is List){
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
  }
  List<PostModel>? _items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
        actions: [
          isLoading ? const CircularProgressIndicator(): const SizedBox(),
        ],
      ),
      body: ListView.builder(
        itemCount: _items?. length ?? 0,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(_items?[index].title ?? ''),
          subtitle: Text(_items?[index].body ?? ''),
        );
      },
      ),
    );
  }
}
