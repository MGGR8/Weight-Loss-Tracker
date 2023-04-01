import 'package:flutter/material.dart';

class Graphs extends StatelessWidget {
  const Graphs({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
      ),
    );
  }
}