// Affichage des deux cards + rose des vents en portrait
import 'dart:math';

import 'package:anemometre_cnpa/Data.dart';
import 'package:anemometre_cnpa/DrawPoint.dart';
import 'package:anemometre_cnpa/homePage.dart';
import 'package:anemometre_cnpa/utils.dart';
import 'package:flutter/material.dart';

class DataListPortrait extends StatelessWidget {

  final List<Data> datas;
  var nbDatas;

  DataListPortrait({Key key, this.datas, this.nbDatas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final width = mediaQueryData.size.width;
    final height = mediaQueryData.size.height;
    var orTel = 0;
    if (MediaQuery.of(context).orientation == Orientation.portrait){
      orTel = 1;
    }else{
      orTel = 2;
    }
    var vM0nds = (datas[nbDatas - 1].vM0 / 1.852);
    vM0nds = (vM0nds * (pow(10, 1))).round() / (pow(10, 1));
    var vC0nds = (datas[nbDatas - 1].vC0 / 1.852);
    vC0nds = (vC0nds * (pow(10, 1))).round() / (pow(10, 1));
    var timeSt = datas[nbDatas - 1].time;
    var diff = new DateTime.fromMillisecondsSinceEpoch(int.parse(timeSt) * 1000, isUtc: false);
    var h = diff.hour;
    DateTime today = new DateTime.now();
    String jour = LeJourSuivantLeNumero(today.weekday);
    String mois = LeMoisSuivantLeNumero(today.month);
    String format ="${jour} ${today.day.toString().padLeft(2,'0')} ${mois} ${today.year.toString()}";
    String heure = "${h.toString().padLeft(2,'0')}h${diff.minute.toString().padLeft(2,'0')}";
    var da0 = datas[nbDatas - 1 ].dA0;
    var temp = datas[nbDatas - 1].temp;
    var trueTemp;
    if(temp == null){
      trueTemp = "--";
    }
    else{
      trueTemp = ConvertTemperature(temp);
    }
    double nb = calculDegOr(da0);
    double nb2 = calculDegOr(datas[nbDatas - 1 ].dA2);
    String orientation = OriantaionVentStr(nb);
    String orientationIni = OriantaionVentStrInitial(nb);
    double x = OriantaionVentPointX(nb);
    double y = OriantaionVentPointY(nb);
    double x2 = OriantaionVentPointX(nb2);
    double y2 = OriantaionVentPointY(nb2);
    return Container(
      child: Column(
          children: <Widget>[
            Container(
             child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Text(
                  format,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  "relevé à " + heure,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: width,
              height: height - (height/1.6),
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage("assets/roseVent.png"),
                  //fit: BoxFit.cover
                ),
              ),
              child: CustomPaint(
                painter: OpenPainter(w: width, h: height/2, x: x, y: y, x2: x2, y2: y2, orTel: orTel)
              ),
            ),
            Container(
              height: 50,
              //margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    orientation,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: width/2.5,
                        height: height/3,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: changeColor(vM0nds),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Vent",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                //vent.toString(),
                                vM0nds.toString() + " nds",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),Text(
                                datas[datas.length - 1].vM0.toString() + " Km/h",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width/2.5,
                        height: height/3,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: changeColor(vC0nds),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Vent Max",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                vC0nds.toString() + " nds",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                datas[datas.length - 1].vC0.toString() + " Km/h",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: width/2.5,
                        height: height / 3,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.yellow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Température",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                //vent.toString(),
                                trueTemp.toString()+ " °C",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width/2.5,
                        height: height / 3,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.yellow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Direction Vent",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                //vent.toString(),
                                orientationIni,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}