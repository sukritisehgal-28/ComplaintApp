import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';


class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Center(
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/hey.jpg'),
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 20.0,
          ),
          
          Text(
            'WELCOME!',
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 10.0,
          ),
          Card(
            color: Colors.blueAccent,
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: ListTile(
              title: Text(
                'LOG IN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => (Login())) );
              },
            ),
          ),
          Card(
            color: Colors.blueAccent,
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: ListTile(
              title: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (Signup())));
                  },
            ),
          ),
        ],
      ),
    );
  }
}


