import 'package:flutter/material.dart';

class CongratsView extends StatelessWidget {
  CongratsView({Key? key}) : super(key: key);
  String congrats = "Your transaction was completed successfully";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Center(child: SizedBox(
          height: 100,
          width: 100,
          child: Text(congrats))),
    );
  }
}
