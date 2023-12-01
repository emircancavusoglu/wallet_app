import 'package:flutter/material.dart';
import 'package:wallet_app/management/state_management.dart';
import 'package:wallet_app/view/congrats_view.dart';

import 'congrats_view.dart';

class CompletedView extends StatefulWidget {
  const CompletedView({Key? key, required this.controller}) : super(key: key);
  final TextEditingController? controller;
  @override
  State<CompletedView> createState() => _CompletedViewState();
}

class _CompletedViewState extends State<CompletedView> {
  bool isSecure = true;
  void changeSecure(){
    setState(() {
      isSecure = !isSecure;
    });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        autofillHints: const [AutofillHints.telephoneNumber],
        obscureText: isSecure,
        controller: widget.controller,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          label: const Text("Secure Code"),
          hintText: '7 haneli güvenlik kodunuzu giriniz.',
          suffixIcon: onVisibilityIcon(),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        navigateToWidget(context, CongratsView());
      },
        child: const Text("Send"),),
    );
  }
  IconButton onVisibilityIcon() {
    return IconButton(onPressed: () {
          changeSecure();
        }, icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.visibility),
      secondChild: const Icon(Icons.visibility_off),
      duration: const Duration(seconds: 2),
    crossFadeState: isSecure ? CrossFadeState.showFirst :
    CrossFadeState.showSecond)
    );
  }
}
