import 'package:complaint/complaint/complaint_page.dart';
import 'package:complaint/complaint/name_page.dart';
import 'package:complaint/not_useful/previous_complaint_1.dart';
import 'package:flutter/material.dart';
import 'package:complaint/add_complainents/previous_complaint_card.dart';

class ThankYouPage extends StatefulWidget {
  const ThankYouPage({Key? key}) : super(key: key);

  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('images/ty1.jpg'),
          ),
          SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Text(
            'THANK YOU',
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
              'Your response has been ',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Center(
            child: Text(
              'successfully registered ',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NamePage()));
            },
            child: Text('DONE'),
          ),
        ],
      ),
    );
  }
}
