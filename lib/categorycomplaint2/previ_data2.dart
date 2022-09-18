import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:complaint/categorycomplaint2/previ2.dart';

class PreviData2 extends ChangeNotifier{
  List<Previous2> _previ2 =[

  ];
  UnmodifiableListView<Previous2> get prev2 {
    return UnmodifiableListView(_previ2);
  }
  int get previCount2{
    return _previ2.length;
  }
  void addPrevious(String title,String desc){
    final prev2 = Previous2(title2: title, desc2: desc);
    _previ2.add(prev2);
    notifyListeners();
  }
  void deletePrev(int index){
    _previ2.remove(_previ2[index]);
    notifyListeners();
  }


}
