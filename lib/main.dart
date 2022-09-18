import 'package:complaint/categorycomplaint2/previ_data2.dart';
import 'package:complaint/previous_complaints/previ_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '1st Page.dart';



void main(){
  runApp(
    Complaint()
  );
}

class Complaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>PreviData(),

    child :MaterialApp(
      theme: ThemeData.dark(),
      home: Screen(),
      debugShowCheckedModeBanner: false,
    ),
    );

  }
}
