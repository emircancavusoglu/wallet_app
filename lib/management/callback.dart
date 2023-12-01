import 'package:flutter/material.dart';

class Callback extends StatefulWidget {
  const Callback({Key? key}) : super(key: key);

  @override
  State<Callback> createState() => _CallbackState();
}

class _CallbackState extends State<Callback> {
  CallbackLanguage? callbackLanguage;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackLanguage>(
          items: CallbackLanguage.languages().map((e) {
            return DropdownMenuItem(
                value: e,
                child: Text(
                  e.name,
                  style: Theme.of(context).textTheme.headlineSmall,),
            );
          }).toList(),
          onChanged: (CallbackLanguage? callbacklanguages){
            setState(() {
              callbackLanguage = callbacklanguages;
            });
          }
    );
  }
}

class CallbackLanguage{
  final String name;
  final Icon icon;

  CallbackLanguage(this.name, this.icon);
  static List<CallbackLanguage> languages(){
    return [
      CallbackLanguage("Turkish", const Icon(Icons.flag)),
      CallbackLanguage("English", const Icon(Icons.flag)),
    ];
  }
}