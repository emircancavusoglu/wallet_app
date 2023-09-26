import 'package:flutter/material.dart';
class PostModelView extends StatefulWidget {
  const PostModelView({Key? key}) : super(key: key);

  @override
  State<PostModelView> createState() => _PostModelViewState();
}

class _PostModelViewState extends State<PostModelView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text("data");
      },),
    );
  }
}
