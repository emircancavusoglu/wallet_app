import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';
import 'package:wallet_app/constants/assets.dart';
class TopUpView extends StatefulWidget {

  const TopUpView({Key? key}) : super(key: key);

  @override
  State<TopUpView> createState() => _TopUpViewState();
}

class _TopUpViewState extends State<TopUpView> {
  String name = "Emircan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
        backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 140, top: 20),
              child: Image.network(ImageAdress.profileImageAdress)),
        ],
      ),
    );
  }
}
