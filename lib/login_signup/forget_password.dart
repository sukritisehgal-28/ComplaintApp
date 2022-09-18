import 'package:flutter/material.dart';

class Forget extends StatefulWidget {

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Center(
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/forgetpassword.png'),
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 20.0,
          ),

          Text(
            'NEW PASSWORD',
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'New Password',
                prefixIcon: Icon(Icons.security),
                labelStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueAccent,
                ),
              ),
              obscureText: true,
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
                  labelText: 'Confirm Password',
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
            width: 10.0,
            height: 10.0,
          ),
          GestureDetector(
            child: Text(
              'CONFIRM',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
