import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
          color: Colors.grey.shade200,
      ),
  
      child : IconTheme(

        data: IconThemeData(color: Colors.grey.shade600, size: 30),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.add_chart),
            // Icon(Icons.search),

            Transform.translate(
              offset: Offset(0, -17),
              child: GestureDetector(
                onTap: () => {
                  Navigator.of(context).pushReplacementNamed('/home'),
                },
                child: Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    shape : BoxShape.circle,
                    
                    gradient : LinearGradient(
                      colors: [
                        Colors.blue.shade700,
                        Colors.lightBlue,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow:  [BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    )]
                  ),
                  child: Icon(Icons.home,color: Colors.grey.shade200,)
                  ),
              ),
            ),

            // Icon(Icons.date_range),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).pushNamed('/details'),
              },
              child: Icon(Icons.bar_chart)),
      
      
        ],),
      )
    );
  }
}