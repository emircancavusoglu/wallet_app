import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class CacheImage extends StatefulWidget {
  const CacheImage({Key? key}) : super(key: key);

  @override
  State<CacheImage> createState() => _CacheImageState();
}

class _CacheImageState extends State<CacheImage> {
  int _currentValue = 0;
  bool _isLoading = false;
  void _changeLoading(){
    _isLoading = !_isLoading;
  }
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
        title: Text(_currentValue.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
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
