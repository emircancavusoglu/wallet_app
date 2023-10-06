import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';

class CacheImage extends StatefulWidget {
  const CacheImage({Key? key}) : super(key: key);

  @override
  State<CacheImage> createState() => _CacheImageState();
}

class _CacheImageState extends LoadingStateful<CacheImage>{
  int _currentValue = 0;
  void _onChange(String value){
    final _value = int.tryParse(value);
    if(_value !=null){
      setState(() {
        _currentValue = _value;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
          child: CircularProgressIndicator(
            backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
          ),
        )],
        title: Text(_currentValue.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        changeLoading();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', _currentValue);
      },child: const Icon(Icons.save),),
      body: TextField(
        onChanged: (value){
          _onChange(value);
        },
      ),
    );
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading(){
    isLoading = !isLoading;
  }
}