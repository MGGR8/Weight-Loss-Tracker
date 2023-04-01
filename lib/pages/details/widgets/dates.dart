import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterapps/widgets/helpers.dart';

class Dates extends StatelessWidget {
  const Dates({super.key});

  @override
  Widget build(BuildContext context) {

    List<DateBox> dateBoxes = [];

    DateTime date = DateTime.now().subtract(Duration(days:3));

    for(int i = 0; i < 6; i++){
      dateBoxes.add(DateBox(date: date, active : i == 3));
      date = date.add(Duration(days: 1));
    }


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          ...dateBoxes,
        ],
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  final bool active;
  final DateTime date;

  const DateBox({
    super.key,
    this.active = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
          width : 0.5,
        
        ),
        gradient: active ? LinearGradient(
          colors: [
            Colors.lightBlue.shade100,
            Colors.blue.shade300,
          ],
          begin: Alignment.topCenter,

        ) : null,

      ),
      child: DefaultTextStyle.merge(
        style:  active  ? TextStyle(color: Colors.white):null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(daysofWeek[date.weekday]!,style : TextStyle(fontSize: 10, fontWeight: FontWeight.bold), ),
            Text(date.day.toString(),style : TextStyle(fontSize: 30, fontWeight: FontWeight.w400), ),
          ],
        ),
      )
    );
  }
}