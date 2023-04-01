// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterapps/pages/home/widgets/activity.dart';
import 'package:flutterapps/pages/home/widgets/current.dart';
import 'package:flutterapps/pages/home/widgets/header.dart';

import '../../widgets/bottom_navigation.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children : [
    
          AppHeader(),
          // CurrentProgram(),
          Activity(),
          BottomNavigation(),
        ],
      ),
    );
  }
}