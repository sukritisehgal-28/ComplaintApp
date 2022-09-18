import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_signup/2options.dart';

class Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 150.0,
                  backgroundImage: AssetImage('images/logo.png'),
                ),
              ),
              SizedBox(
                width: 20.0,
                height: 10.0,
              ),
              Center(
                child: Text(
                  'COMPLAINT',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Center(
                child: Text(
                  'APP',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Options()));

                },
                child: Container(
                  child: Center(
                     child: Icon(
                      Icons.arrow_forward,
                      color: Colors.blueAccent,
                      size: 40.0,
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}