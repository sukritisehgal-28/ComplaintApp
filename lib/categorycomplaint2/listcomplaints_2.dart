import 'package:complaint/categorycomplaint2/previous_list2.dart';
import 'package:flutter/material.dart';
import 'package:complaint/add_complainents/complaintnumber1.dart';
import 'package:complaint/add_complainents/previous_list.dart';
import 'package:complaint/categorycomplaint2/complaintnumber2.dart';


class ListComplaints2 extends StatelessWidget {
  const ListComplaints2({Key? key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => ComplaintNo2()));
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueAccent,


      ),
      body: PreviousList2(),




    );
  }
}