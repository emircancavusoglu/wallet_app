import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/constants/http_path.dart';
import 'package:wallet_app/service/post_model.dart';
class PostModelView extends StatefulWidget {
  const PostModelView({Key? key}) : super(key: key);

  @override
  State<PostModelView> createState() => _PostModelViewState();
}

class _PostModelViewState extends State<PostModelView> {
  bool isLoading = false;
  void changeIsLoading(){
    isLoading = !isLoading;
  }
  @override
  void initState(){
    super.initState();
    fetchData();
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
        actions: [
          isLoading ? const CircularProgressIndicator(): SizedBox(),
        ],
      ),
      body: ListView.builder(
        itemCount: _items?. length ?? 0,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(_items?[index].title ?? ''),
          subtitle: Text(_items?[index].body ?? ''),
        );
      },),
    );
  }
}
