// Affichage des points sur la rose des vents
import 'dart:collection';
import 'dart:ui';
import 'package:flutter/material.dart';

class OpenPainter extends CustomPainter{
  var w;
  var h;
  double x;
  double y;
  var orTel;
  OpenPainter({Key key, this.w, this.h, this.x, this.y, this.orTel});
  @override
  void paint(Canvas canvas, Size size){
    if (orTel == 1){
      var paint1 = Paint()..color = Colors.black..strokeWidth = 10;
      var paint2 = Paint()..color = Colors.red..strokeWidth = 8;
      canvas.drawLine(Offset(w/2.13,h/2.70), Offset(w/x,h/y), Paint()..color = Colors.red..strokeWidth = 3);
      canvas.drawCircle(Offset(w/x,h/y), 5, paint2);
      canvas.drawCircle(Offset(w/2.13,h/2.70), 5, paint1);
    }else{
      var paint1 = Paint()..color = Colors.black..strokeWidth = 15;
      var paint2 = Paint()..color = Colors.red..strokeWidth = 15;
      canvas.drawLine(Offset(w/2.12,h/2.77), Offset(w/x,h/y), Paint()..color = Colors.red..strokeWidth = 3);
      canvas.drawCircle(Offset(w/x,h/y), 8, paint2);
      canvas.drawCircle(Offset(w/2.12,h/2.77), 10, paint1);
    }

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}