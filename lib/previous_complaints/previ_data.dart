import 'dart:collection';
import 'package:flutter/material.dart';
import 'previ1.dart';

class PreviData extends ChangeNotifier{
  List<Previous> _previ =[

  ];
  UnmodifiableListView<Previous> get prev {
    return UnmodifiableListView(_previ);
  }
  int get previCount{
    return _previ.length;
  }
  void addPrevious(String title,String desc){
    final prev = Previous(title: title, desc: desc);
  _previ.add(prev);
  notifyListeners();
  }
  void deletePrev(int index){
    _previ.remove(_previ[index]);
    notifyListeners();
  }


}
