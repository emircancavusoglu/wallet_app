import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';
import 'package:wallet_app/constants/assets.dart';
import 'package:wallet_app/constants/http_path.dart';
import 'package:wallet_app/service/post_model.dart';

class UploadData extends StatefulWidget {
  const UploadData({Key? key}) : super(key: key);

  @override
  State<UploadData> createState() => _UploadDataState();
}

class _UploadDataState extends State<UploadData> {
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
        backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
        title: Text("Welcome $name"),
        actions: [
          ClipOval(
            child: SizedBox(
              width: 50,
                height: 50,
                child: Image.network(ImageAdress.profileImageAdress)),
          ),
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
