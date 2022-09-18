import 'package:complaint/categorycomplaint2/previous_complaint_card2.dart';
import 'package:complaint/previous_complaints/previ_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:complaint/add_complainents/previous_complaint_card.dart';
import 'package:complaint/categorycomplaint2/previ_data2.dart';


class PreviousList2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<PreviData2>(builder: (context,data,child) {
      return ListView.builder(
        itemCount: data.previCount2,
        itemBuilder: (context,index) {
          return PreviousPage2(
            title: data.prev2[index].title2,
            description: data.prev2[index].desc2,
            onPress: (){
              data.deletePrev(index);
            },
          );
        },
      );

    });
  }
}