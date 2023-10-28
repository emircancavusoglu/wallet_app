import 'package:flutter/material.dart';
import 'package:wallet_app/management/state_management.dart';
import 'package:wallet_app/views/home_view.dart';

class CongratsView extends StatelessWidget {
  CongratsView({Key? key}) : super(key: key);
  String congrats = "Your transaction was completed successfully";
  String navigateMainText = "Back Main Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: SizedBox(
          height: 100,
          width: 100,
          child: Column(
            children: [
              Text(congrats),
              TextButton(onPressed: (){
                navigateToWidget(context, const HomeView());
              },child: Text(navigateMainText),),
            ],
          ),
      ),
      ),
    );
  }
}
