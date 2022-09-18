import 'package:complaint/categorycomplaint2/listcomplaints_2.dart';
import 'package:flutter/material.dart';
import 'package:complaint/add_complainents/complaintnumber1.dart';
import 'package:complaint/categorycomplaint2/complaintnumber2.dart';
import 'package:complaint/add_complainents/listcomplaints.dart';


class ComplaintPage extends StatefulWidget {

  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Center(
              child: Card(
                color: Colors.blueAccent,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Category Complaint 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ListComplaints()));
                  },
                ),
              ),
            ),
            Card(
              color: Colors.blueAccent,
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Category Complaint 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListComplaints()));
                },
              ),
            ),
          Card(
            color: Colors.blueAccent,
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: ListTile(
              title: Text(
                'Category Complaint 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListComplaints()));
                },
            ),
          ),
          Card(
            color: Colors.blueAccent,
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: ListTile(
              title: Text(
                'Category Complaint 4',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListComplaints()));
              },
            ),
          ),

        ],
      ),
    );
  }
}
