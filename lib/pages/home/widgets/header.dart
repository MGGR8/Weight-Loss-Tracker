import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,

      child: Stack(
        children: [
          CustomPaint(
            size: Size(double.infinity, 200),
            painter: HeaderPainter(),
    
          ),
          Positioned(
            top: 20,
            left : 20,
            child: IconButton(onPressed: () {Navigator.pop(context);},
             icon: Icon(Icons.home), 
             color: Colors.white, iconSize: 30,
             )
             ),
             Positioned(
              top: 30,
              right: 40,
               child: CircleAvatar(
                  minRadius: 25,
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('assets/profilepic.jpg'),
                  ),
               ),
             ),
             Positioned(
                bottom: 20,
                left: 30,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300
                    ),
                  
                  ),
                  Text('Mitul',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  
                  )
             
                ],
               ),
             ),
        ],
    
      ),
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint backColor = Paint()..color = Colors.blue;
    Paint circles = Paint()..color = Colors.lightBlue;
    canvas.drawRect(Rect.fromPoints(Offset(0,0), Offset(size.width,size.height)), backColor);
    canvas.drawCircle(Offset(size.width * 0.7, 10), 30, circles);
    canvas.drawCircle(Offset(size.width * 0.4, 100), 10, circles);
    canvas.drawCircle(Offset(size.width * 0.8, 190), 20, circles);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}