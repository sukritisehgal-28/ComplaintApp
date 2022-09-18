import 'dart:ui';

import 'package:complaint/login_signup/forget_password.dart';
import 'package:flutter/material.dart';
import 'forget_password.dart';
import 'package:complaint/complaint/name_page.dart';






class Login extends StatefulWidget {


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late String userName;


  void updateUI(dynamic userName){
    setState(() {
      if(userName==null){
        userName='';
        return;
    }});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Center(
            child: CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('images/LNSU.png'),
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 10.0,
          ),
          Center(
            child: Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  prefixIcon: Icon(Icons.person),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueAccent,
                  ),
                ),
                onChanged: (value){
                  userName = value;
                },
              ),
            ),
          ),
      SizedBox(
        width: 10.0,
        height: 10.0,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
         decoration: InputDecoration(
           border: OutlineInputBorder(),
           labelText: 'Enter your Email ID',
           prefixIcon: Icon(Icons.alternate_email),
           labelStyle: TextStyle(
             fontSize: 20.0,
             color: Colors.blueAccent,
           ),
         ),
        ),
      ),
      SizedBox(
        width: 10.0,
        height: 10.0,
      ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your Password',
                  prefixIcon: Icon(Icons.security),

                labelStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueAccent,
                )
              ),
              obscureText: true,

            ),
          ),
      SizedBox(
        width: 5.0,
        height: 2.0,
      ),
      Center(
        child: GestureDetector(
          child: Text(
              'FORGET PASSWORD?',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => (Forget()) ));
          },
        ),
      ),
      SizedBox(
        width: 10.0,
        height: 10.0,
      ),
      Center(
        child: GestureDetector(
          child: Text(
            'CONFIRM LOGIN',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> NamePage()));

          },
        ),
      ),
        ],
      )
    );
  }
}
