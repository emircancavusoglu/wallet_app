import 'package:flutter/material.dart';

class CompletedView extends StatefulWidget {
  const CompletedView({Key? key}) : super(key: key);

  @override
  State<CompletedView> createState() => _CompletedViewState();
}

class _CompletedViewState extends State<CompletedView> {
  final TextEditingController _passwordController = TextEditingController();
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
        controller: _passwordController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          label: const Text("Secure Code"),
          hintText: '7 haneli güvenlik kodunuzu giriniz.',
          suffixIcon: IconButton(onPressed: () {
            changeSecure();
          }, icon: Icon( isSecure ?  Icons.visibility : Icons.visibility_off)),
        ),
      ),
    );
  }
}
