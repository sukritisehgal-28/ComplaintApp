import 'package:complaint/complaint/name_page.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Center(
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('images/LNSU.png'),
            ),
          ),


          Center(
            child: Text(
              'SIGNUP',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'username',
                prefixIcon: Icon(Icons.person),
                labelStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Email id',
                  prefixIcon: Icon(Icons.alternate_email),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueAccent,
                  )
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your New Password',
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
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Password again',
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
            height: 5.0,
          ),
          GestureDetector(
            child: Text(
              'CONFIRM SIGNUP',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> NamePage()));
            },
          ),



        ],
      ),
    );
  }
}
