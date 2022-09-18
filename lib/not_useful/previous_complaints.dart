import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PreviousComp extends StatefulWidget {
  final String title;
  final int time;


  const PreviousComp({required this.title,required this.time});

  @override
  _PreviousCompState createState() => _PreviousCompState();
}

class _PreviousCompState extends State<PreviousComp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [

          Container(

            child: Text(

              widget.title == null? 'title':widget.title
            ),
          ),
          Container(
            child: Text(
              widget.time == null ?'time': widget.time.toString(),
          ),
          ),

        ],


      ),

    );
  }
}
