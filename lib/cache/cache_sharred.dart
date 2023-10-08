import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/cache/cache_manager.dart';
import 'package:wallet_app/constants/app_theme.dart';

class CacheSharred extends StatefulWidget {
  const CacheSharred({Key? key}) : super(key: key);

  @override
  State<CacheSharred> createState() => _CacheSharredState();
}

class _CacheSharredState extends LoadingStateful<CacheSharred>{
  late final CacheManager _manager;
  @override
  void initState() {
    super.initState();
    _manager = CacheManager();
  }
  Future<void> initialize() async {
    changeLoading();
    await _manager.init();
  }
  int _currentValue = 0;
  void _onChange(String value){
    final _value = int.tryParse(value);
    if(_value !=null){
      setState(() {
        _currentValue = _value;
      });
    }
  }
  Future<void> getDefaultValues()async{
    final prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    _onChange(counter.toString());
  }
  Future<void>readItem()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt(_currentValue.toString());
  }
  Future<void>removeItem()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_currentValue.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading ?
          Center(
          child: CircularProgressIndicator(
            backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
          ),
        )
              : const SizedBox.shrink(),
        ],
        title: Text(_currentValue.toString()),
      ),
      floatingActionButton: Row(
        children: [
          saveButton(),
          removeButton(),
          saveButton(),
        ],
      ),
      body: TextField(
        onChanged: (value){
          _onChange(value);
        },
      ),
    );
  }

  FloatingActionButton saveButton() {
    return FloatingActionButton(onPressed: () async {
      changeLoading();
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('counter', _currentValue);
    },child: const Icon(Icons.save),);
  }FloatingActionButton removeButton() {
    return FloatingActionButton(onPressed: () async {
      changeLoading();
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('counter');
    },child: const Icon(Icons.save),);
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading(){
    isLoading = !isLoading;
  }
}