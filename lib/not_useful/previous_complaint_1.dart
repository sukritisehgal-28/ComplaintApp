import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complaint/add_complainents/complaintnumber1.dart';


class PreviousComplaints extends StatefulWidget {
  const PreviousComplaints({Key? key}) : super(key: key);

  @override
  _PreviousComplaintsState createState() => _PreviousComplaintsState();
}

class _PreviousComplaintsState extends State<PreviousComplaints> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Center(
            child: Text(
              'Description of the complaint',
              style: TextStyle(
                fontSize: 20.0,

              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Title of complaint',
              prefixIcon: Icon(Icons.title),
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
              ),
            ),

          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Time',
              prefixIcon: Icon(Icons.access_time),
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Starting date',
              prefixIcon: Icon(Icons.date_range),
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Description of complaint',
              prefixIcon: Icon(Icons.description),
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
              ),
            ),
            maxLines: 5,
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
