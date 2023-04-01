import 'package:flutter/material.dart';
import 'package:flutterapps/pages/details/widgets/appbar.dart';
import 'package:flutterapps/pages/details/widgets/dates.dart';
import 'package:flutterapps/pages/details/widgets/graphs.dart';
// import 'package:flutterapps/pages/details/widgets/info.dart';
// import 'package:flutterapps/pages/details/widgets/stats.dart';
import 'package:flutterapps/pages/details/widgets/steps.dart';

import '../../widgets/bottom_navigation.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(appBar: AppBar(),),
      body: Column(
        children : [
          Dates(),
          Steps(),
          Graphs(),
          // Info(),
          // Stats(),
          BottomNavigation(),
        ],
      ),


    );
  }
}

