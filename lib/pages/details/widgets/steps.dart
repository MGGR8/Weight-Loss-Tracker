import 'package:flutter/material.dart';

int weight = 70;
class Steps extends StatelessWidget {
  const Steps({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: Text('Current Weight : $weight KG',
          textAlign: TextAlign.center,
          style : TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
          ),
        ),
    );
  }
}


