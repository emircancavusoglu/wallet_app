import 'package:flutter/material.dart';
import '../views/home_view.dart';

abstract class StateManagement extends State<HomeView>{
  int selectedIndex = 0;
  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  void openTransferDialog(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: const Text("Transfer"),
        icon: const Icon(Icons.attach_money_rounded),
        content: Form(
          child: Column(
            children:[
              textFormField(const InputDecoration(label: Text("Money")),
                  TextInputType.number),
              textFormField(const InputDecoration(label: Text("Cost")),
                TextInputType.number
              ),
              textFormField(const InputDecoration(label: Text("Name")),
              TextInputType.text
              ),
            ],
          ),
        ),
      );
    });
  }
  TextFormField textFormField(InputDecoration inputDecoration, TextInputType textInputType) {
    return TextFormField(
      decoration: inputDecoration,
      textInputAction: TextInputAction.next,
      keyboardType: textInputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validatorCheck,
    );
  }
  BottomNavigationBarItem buildBottomNavigationBarItem(Icon icon) {
    return BottomNavigationBarItem(label: '', icon: icon);
  }
  String? validatorCheck(String? data){
  return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._fillField;
  }
}

class ValidatorMessage{
  static const String _fillField = 'you should fill this field';
}
