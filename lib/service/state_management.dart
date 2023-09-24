import 'package:flutter/material.dart';
import '../views/home_view.dart';

abstract class StateManagement extends State<HomeView>{
  int selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  void _openTransferDialog(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: const Text("Transfer"),
        icon: const Icon(Icons.attach_money_rounded),
        content: Column(
          children:[
            textField(const Text("Money Type"), TextInputType.text,AutofillHints.transactionCurrency as AutofillHints),
            textField(const Text("Iban"), TextInputType.number, AutofillHints.addressCity as AutofillHints),
            textField(const Text("Amount"), TextInputType.number, AutofillHints.addressCity as AutofillHints)
          ],
        ),
      );
    });
  }
  TextField textField(Text label, TextInputType inputType, AutofillHints autofillHints) {
    return TextField(
      autofillHints: const [AutofillHints.addressCity],
      keyboardType: inputType,
      decoration: InputDecoration(
          label: label
      ),
    );
  }
  BottomNavigationBarItem buildBottomNavigationBarItem(Icon icon) {
    return BottomNavigationBarItem(label: '', icon: icon);
  }
}
