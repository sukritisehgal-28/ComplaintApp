import 'package:flutter/material.dart';
import 'package:complaint/add_complainents/complaintnumber1.dart';
import 'package:complaint/add_complainents/previous_list.dart';
class ListComplaints extends StatelessWidget {
  const ListComplaints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Complaints',
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ComplaintNo1()));
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueAccent,


      ),
      body: PreviousList(),




    );
  }
}