import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';
import 'package:wallet_app/constants/assets.dart';

import '../service/post_model.dart';
class TopUpView extends StatefulWidget {

  const TopUpView({Key? key}) : super(key: key);

  @override
  State<TopUpView> createState() => _TopUpViewState();
}

class _TopUpViewState extends State<TopUpView> {
  void fetchPostItems(){
    Dio().get('path');

  }
  String name = "Emircan";
  List<PostModel>? _items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
        backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
      ),
      body: Text(""),
    );
  }
}
