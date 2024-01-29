import 'package:flutter/material.dart';
class UpdateUser extends ChangeNotifier{

  int value;

  UpdateUser({
    this.value = 0,
});
  void increment () {
       value++;
       notifyListeners();
  }

  void decrement () {
    value --;
    notifyListeners();
  }

}