import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:complaint/complaint/thankyou_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:complaint/previous_complaints/previ_data.dart';
import 'package:provider/provider.dart';
import 'package:complaint/add_complainents/previous_complaint_card.dart';
import 'package:intl/intl.dart';
import 'package:complaint/buttondatetime_widget.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(ComplaintNo1());
}


class ComplaintNo1 extends StatefulWidget {

  @override
  _ComplaintNo1State createState() => _ComplaintNo1State();
}

class _ComplaintNo1State extends State<ComplaintNo1> {
  final FirebaseApp_fbApp = Firebase.initializeApp();

  String titleText = '';
  String descText = '';
  String dateText= '' ;
  DateTime ?dateTime;

  String getText() {
    if (dateTime == null) {
      return 'Select Date&Time';
    } else {
      return'${dateTime?.day}/${dateTime?.month}/${dateTime?.year}::${dateTime?.hour}:${dateTime?.minute}:${dateTime?.second}';
    }
  }


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
              titleText = value;
            },
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          ButtonHeaderWidget(
            title: 'Date & Time', text: getText(), onClicked: () =>
              pickDateTime(context),
          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
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
              descText = value;
            },

          ),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          Center(
            child: Row(
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text('ADD MORE'),
                ),
                SizedBox(
                  width: 20.0,

                ),
                ElevatedButton(onPressed: () {
                  print(titleText);
                  print(descText);
                  print(dateText);
                  Provider.of<PreviData>(context, listen: false)
                      .addPrevious(titleText, descText);
                  Navigator.pop(context);
                }, child: Text('SAVE'),
                ),
                SizedBox(
                  width: 20.0,

                ),
                ElevatedButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThankYouPage()));
                }, child: Text('DONE'),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }


  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: dateTime ?? initialDate,
      firstDate: DateTime(DateTime
          .now()
          .year - 5),
      lastDate: DateTime(DateTime
          .now()
          .year + 5),
    );
    if (newDate == null) return null;
    return newDate;
  }
  Future<TimeOfDay?> pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: dateTime != null
          ? TimeOfDay(hour: dateTime!.hour, minute: dateTime!.minute)
          : initialTime,
    );

    if (newTime == null) return null;

    return newTime;
  }
  Future pickDateTime(BuildContext context) async {
    final date = await pickDate(context);
    if (date == null) return;

    final time = await pickTime(context);
    if (time == null) return;

    setState(() {
      dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  }


