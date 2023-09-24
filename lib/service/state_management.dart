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
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return (value?.isNotEmpty ?? false) ? null : 'you should fill this field';
                  },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return (value?.isNotEmpty ?? false) ? null : 'you should fill this field';
                  },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return (value?.isNotEmpty ?? false) ? null : 'you should fill this field';
                  },
              )
            ],
          ),
        ),
      );
    });
  }
  BottomNavigationBarItem buildBottomNavigationBarItem(Icon icon) {
    return BottomNavigationBarItem(label: '', icon: icon);
  }
}
