import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterapps/pages/details/widgets/graphs.dart';
import 'package:flutterapps/widgets/helpers.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});
  @override
  Widget build(BuildContext context) {

    String weight = randBetween(80, 90).toString();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Weight : $weight kg',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ), 

    );
  }
}


