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
  @override
  void initState(){
    super.initState();
    fetchData();
  }
  Future<void>fetchData() async{
    final response = await Dio().get(ServicePaths.httpPath);
  }
  List<PostModel>? _items;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items?. length ?? 0,
        itemBuilder: (context, index) {
        return Text("_items");
      },),
    );
  }
}
