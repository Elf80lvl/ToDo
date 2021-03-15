import 'package:flutter/cupertino.dart';

class Data with ChangeNotifier {
  //сами данные
  String _data = 'some data';

  //предоставляем данные
  String get getData => _data;

  //изменяем данные
  void changeString(String newString) {
    _data = newString;
    notifyListeners();
  }
}
