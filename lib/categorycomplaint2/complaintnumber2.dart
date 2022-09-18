import 'package:complaint/categorycomplaint2/previ_data2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:complaint/complaint/thankyou_page.dart';
import 'package:complaint/not_useful/previous_complaints.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:complaint/previous_complaints/previ_data.dart';
import 'package:provider/provider.dart';
import 'package:complaint/add_complainents/previous_complaint_card.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(ComplaintNo2());
}


class ComplaintNo2 extends StatefulWidget {

  @override
  _ComplaintNo2State createState() => _ComplaintNo2State();
}

class _ComplaintNo2State extends State<ComplaintNo2> {
  final FirebaseApp_fbApp =Firebase.initializeApp();

  String titleText2='';
  String descText2='';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(
            child: Text(
              'Describe the complaint',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Title of complaint',
              prefixIcon: Icon(Icons.title),
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
              ),
            ),
            onChanged: (value) {
              titleText2 = value;
            },
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          TextField(
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
          TextField(
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
          TextField(
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
            onChanged: (value) {
              descText2 = value;
            },

          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('ADD MORE'),
              ),
              SizedBox(
                width: 20.0,

              ),
              ElevatedButton(onPressed: () {

                print(titleText2);
                print(descText2);
                Provider.of<PreviData2>(context, listen: false)
                    .addPrevious(titleText2, descText2);
                Navigator.pop(context);
              }, child: Text('SAVE'),
              ),
              SizedBox(
                width: 20.0,

              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThankYouPage()));
              }, child: Text('DONE'),
              ),
            ],
          ),




        ],
      ),
    );
  }
}


