import 'package:complaint/add_complainents/listcomplaints.dart';
import 'package:complaint/categorycomplaint2/listcomplaints_2.dart';
import 'package:complaint/main.dart';
import 'package:flutter/material.dart';
import 'package:complaint/complaint/complaint_page.dart';
import 'package:complaint/not_useful/previous_complaint_1.dart';
import 'package:complaint/add_complainents/previous_complaint_card.dart';
class NamePage extends StatefulWidget {

  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {

   late String userName;

  void updateUI(dynamic userName){
    setState(() {
      if(userName==null){
        userName='ERROR';
        return;
      }});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('images/selection.jpg'),
          ),
          SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Text(
            'WELCOME',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blueAccent,
          ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Center(
            child: Text(
              'Select your option!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),


          Column(
            children: [
              Card(
                color: Colors.blueAccent,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'ADD COMPLAINTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ListComplaints()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'PREVIOUS COMPLAINTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ListComplaints()));
                  },
                ),
              ),





                  ]


          )
          ]
      )

   );
  }
}
