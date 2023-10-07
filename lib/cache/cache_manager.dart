
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager{
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
}
