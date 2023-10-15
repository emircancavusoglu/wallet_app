import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/cache/cache_exception.dart';

enum SharedKeys{ counter }
class CacheManager{
  SharedPreferences? preferences;
  CacheManager(){
   init();
  }
  Future<void> init() async {
    preferences =  await SharedPreferences.getInstance();
  }
  void _checkPreferences(){
    if(preferences == null) throw CacheException();
  }
  Future<void> saveString(SharedKeys key, String value)async{
    _checkPreferences();
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(key.name, value);
  }
  Future<void>saveStringItems(SharedKeys key, List<String> value)async {
    _checkPreferences();
    await preferences?.setStringList(key.name, value);
  }

  List<String>? getString(SharedKeys key){
    _checkPreferences();
    return preferences?.getStringList(key.name);
  }
  Future<bool?> removeString(SharedKeys key)async{
    _checkPreferences();
    final preferences = await SharedPreferences.getInstance();
    return (await preferences?.remove(key.name)) ?? false;
  }
}

