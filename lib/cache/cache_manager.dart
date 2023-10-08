import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/cache/cache_exception.dart';

class CacheManager{
  SharedPreferences? preferences;
  CacheManager(){
   init();
  }
  Future<void> init() async {
    preferences =  await SharedPreferences.getInstance();
  }
  void _checkPreferences(){
    if(preferences == null){
      CacheException();
    }
  }
  Future<void> saveString(String key, String value)async{
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('counter', value);
  }
  Future<String?>getString(String key)async{
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString('counter');
  }
  Future<bool?> removeString(String key)async{
    final preferences = await SharedPreferences.getInstance();
    return (await preferences?.remove('counter')) ?? false;
  }

}

