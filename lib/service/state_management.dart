import 'package:flutter/material.dart';
import 'package:wallet_app/views/completed_page.dart';
import 'package:wallet_app/views/profile_view.dart';
import 'package:wallet_app/views/upload_data.dart';
import '../views/home_view.dart';

abstract class StateManagement extends State<HomeView>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Widget> pages = [
     const HomeView(),
     const ProfileView(),
    const UploadData(),
  ];
  int selectedIndex = 0;
  void onItemTapped(int index){
    setState(() {
        selectedIndex = index;
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => pages[index],));
      }
       );
  }
  void openTransferDialog(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: const Text("Transfer"),
        icon: const Icon(Icons.attach_money_rounded),
        content: Form(
          key: _formKey,
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
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                navigateToWidget(context,  const CompletedView(controller: null,));
              }
              }, child: const Text("Send")),
            ],
          ),
        ),
      );
    });
  }
  TextFormField textFormField(InputDecoration inputDecoration,
      TextInputType textInputType) {
    return TextFormField(
      decoration: inputDecoration,
      textInputAction: TextInputAction.next,
      keyboardType: textInputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validatorCheck,
    );
  }
  BottomNavigationBarItem buildBottomNavigationBarItem(
      Icon icon, MaterialPageRoute<void> pageRoute) {
    return BottomNavigationBarItem(
      label: '',
      icon: icon,
    );
  }
  String? validatorCheck(String? data){
  return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._fillField;
  }
}

class ValidatorMessage{
  static const String _fillField = 'you should fill this field';
}
void navigateToWidget(BuildContext context, Widget widget){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return widget;
  },));
  }

  enum WidgetSizes{
    sizedBoxHeight
  }
  extension WidgetSizesExtension on WidgetSizes{
  double value(){
    switch(this){
      case WidgetSizes.sizedBoxHeight :
        return 20;
    }
  }
  }