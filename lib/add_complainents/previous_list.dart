import 'package:complaint/previous_complaints/previ_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:complaint/add_complainents/previous_complaint_card.dart';

class PreviousList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<PreviData>(builder: (context,data,child) {
      return ListView.builder(
        itemCount: data.previCount,
        itemBuilder: (context,index) {
          return PreviousPage(
            title: data.prev[index].title,
            description: data.prev[index].desc,
            onPress: (){
              data.deletePrev(index);
            },
          );
        },
      );

    });
  }
}
