import 'package:flutter/cupertino.dart';

class DrawerState with ChangeNotifier {
  int _Index = 0;

  void setIndex(int index) {
    _Index = index;
    print(_Index);
    notifyListeners();
  }

  int get currentIndex => _Index;
}
