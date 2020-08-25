import 'package:flutter/material.dart';

Color changeColor(double vent){
  Color color ;
  if (vent >= 0.1 && vent <= 5.0){
    color = Colors.lightBlueAccent;
  }
  else if (vent >= 5.1 && vent <= 10.0){
    color = Colors.blue;
  }
  else if (vent >= 10.1 && vent <= 15.0){
    color = Colors.lightGreenAccent;
  }
  else if (vent >= 15.1 && vent <= 20.0){
    color = Colors.green;
  }
  else if (vent >= 20.1 && vent <= 25.0){
    color = Colors.orange;
  }
  else if (vent >= 25.1 && vent <= 30.0){
    color = Colors.red;
  }
  else if (vent >= 30.1 && vent <= 35.0){
    color = Colors.purpleAccent;
  }
  else if (vent >= 35.1) {
    color = Colors.purple;
  }
  else{
    color = Colors.white;
  }
  return color;
}

String LeJourSuivantLeNumero(int jour)
{
  String resJour = "";
  if (jour == 1)
  {
    resJour = "Lundi";
  }
  else if (jour == 2)
  {
    resJour = "Mardi";
  }
  else if (jour == 3)
  {
    resJour = "Mercredi";
  }
  else if (jour == 4)
  {
    resJour = "Jeudi";
  }
  else if (jour == 5)
  {
    resJour = "Vendredi";
  }
  else if (jour == 6)
  {
    resJour = "Samedi";
  }
  else if (jour == 7)
  {
    resJour = "Dimanche";
  }
  return resJour;
}

String LeMoisSuivantLeNumero(int Mois)
{
  String resMois = "";
  if (Mois == 1)
  {
    resMois = "Janvier";
  }
  else if (Mois == 2)
  {
    resMois = "Février";
  }
  else if (Mois == 3)
  {
    resMois = "Mars";
  }
  else if (Mois == 4)
  {
    resMois = "Avril";
  }
  else if (Mois == 5)
  {
    resMois = "Mai";
  }
  else if (Mois == 6)
  {
    resMois = "Juin";
  }
  else if (Mois == 7)
  {
    resMois = "Juillet";
  }
  else if (Mois == 8)
  {
    resMois = "Août";
  }
  else if (Mois == 9)
  {
    resMois = "Septembre";
  }
  else if (Mois == 10)
  {
    resMois = "Octobre";
  }
  else if (Mois == 11)
  {
    resMois = "Novembre";
  }
  else if (Mois == 12)
  {
    resMois = "Décembre";
  }
  else{
    resMois = "Error";
  }
  return resMois;
}

double calculDegOr(int nb){
  double res = (nb*360)/128;
  return  res;
}

String OriantaionVentStr(double deg){

  String orVenStr = "Error";

  if (deg >= 0 && deg <= 5){
    orVenStr = "Nord";
  }else if (deg >= 5.1 && deg <= 35){
    orVenStr = "Nord-Nord-Est";
  }else if (deg >= 35.1 && deg <= 55){
    orVenStr = "Nord-Est";
  }else if (deg >= 55.1 && deg <= 88){
    orVenStr = "Est-Nord-Est";
  }else if (deg >= 88.1 && deg <= 91){
    orVenStr = "Est";
  }else if (deg >= 91.1 && deg <= 125){
    orVenStr = "Est-Sud-Est";
  }else if (deg >= 125.1 && deg <= 145){
    orVenStr = "Sud-Est";
  }else if (deg >= 145.1 && deg <= 178){
    orVenStr = "Sud-Sud-Est";
  }else if (deg >= 178.1 && deg <= 181){
    orVenStr = "Sud";
  }else if (deg >= 181.1 && deg <= 215){
    orVenStr = "Sud-Sud-Ouest";
  }else if (deg >= 215.1 && deg <= 235){
    orVenStr = "Sud-Ouest";
  }else if (deg >= 235.1 && deg <= 268){
    orVenStr = "Ouest-Sud-Ouest";
  }else if (deg >= 268.1 && deg <= 271){
    orVenStr = "Ouest";
  }else if (deg >= 271.1 && deg <= 315){
    orVenStr = "Ouest-Nord-Ouest";
  }else if (deg >= 315.1 && deg <= 325){
    orVenStr = "Nord-Ouest";
  }else if (deg >= 325.1 && deg <= 355){
    orVenStr = "Nord-Nord-Ouest";
  }else if (deg >= 355.1 && deg <= 360){
    orVenStr = "Nord";
  }else{
    orVenStr = "Error";
  }
  return orVenStr;
}

String OriantaionVentStrInitial(double deg){

  String orVenStr = "Error";

  if (deg >= 0 && deg <= 5){
    orVenStr = "N";
  }else if (deg >= 5.1 && deg <= 35){
    orVenStr = "NNE";
  }else if (deg >= 35.1 && deg <= 55){
    orVenStr = "NE";
  }else if (deg >= 55.1 && deg <= 88){
    orVenStr = "ENE";
  }else if (deg >= 88.1 && deg <= 91){
    orVenStr = "E";
  }else if (deg >= 91.1 && deg <= 125){
    orVenStr = "ESE";
  }else if (deg >= 125.1 && deg <= 145){
    orVenStr = "SE";
  }else if (deg >= 145.1 && deg <= 178){
    orVenStr = "SSE";
  }else if (deg >= 178.1 && deg <= 181){
    orVenStr = "S";
  }else if (deg >= 181.1 && deg <= 215){
    orVenStr = "SSO";
  }else if (deg >= 215.1 && deg <= 235){
    orVenStr = "SO";
  }else if (deg >= 235.1 && deg <= 268){
    orVenStr = "OSO";
  }else if (deg >= 268.1 && deg <= 271){
    orVenStr = "O";
  }else if (deg >= 271.1 && deg <= 315){
    orVenStr = "ONO";
  }else if (deg >= 315.1 && deg <= 325){
    orVenStr = "NO";
  }else if (deg >= 325.1 && deg <= 355){
    orVenStr = "NNO";
  }else if (deg >= 355.1 && deg <= 360){
    orVenStr = "N";
  }else{
    orVenStr = "Error";
  }
  return orVenStr;
}

double OriantaionVentPointX(double deg){
  double orVenX = 0.0;
  if (deg >= 0 && deg <= 5){
    orVenX = 2.13;
  }else if (deg >= 5.1 && deg <= 35){
    orVenX = 1.78;
  }else if (deg >= 35.1 && deg <= 55){
    orVenX = 1.57;
  }else if (deg >= 55.1 && deg <= 88){
    orVenX = 1.45;
  }else if (deg >= 88.1 && deg <= 91){
    orVenX = 1.41;
  }else if (deg >= 91.1 && deg <= 125){
    orVenX = 1.46;
  }else if (deg >= 125.1 && deg <= 145){
    orVenX = 1.57;
  }else if (deg >= 145.1 && deg <= 178){
    orVenX = 1.78;
  }else if (deg >= 178.1 && deg <= 181){
    orVenX = 2.13;
  }else if (deg >= 181.1 && deg <= 215){
    orVenX = 2.60;
  }else if (deg >= 215.1 && deg <= 235){
    orVenX = 3.30;
  }else if (deg >= 235.1 && deg <= 268){
    orVenX = 4.00;
  }else if (deg >= 268.1 && deg <= 271){
    orVenX = 4.30;
  }else if (deg >= 271.1 && deg <= 315){
    orVenX = 4.00;
  }else if (deg >= 315.1 && deg <= 325){
    orVenX = 3.30;
  }else if (deg >= 325.1 && deg <= 355){
    orVenX = 2.65;
  }else if (deg >= 355.1 && deg <= 360){
    orVenX = 2.13;
  }else{
    orVenX = 2.13;
  }
  return orVenX;
}

double OriantaionVentPointY(double deg){
  double orVenY = 0.0;
  if (deg >= 0 && deg <= 5){
    orVenY = 7.70;
  }else if (deg >= 5.1 && deg <= 35){
    orVenY = 6.60;
  }else if (deg >= 35.1 && deg <= 55){
    orVenY = 5.00;
  }else if (deg >= 55.1 && deg <= 88){
    orVenY = 3.57;
  }else if (deg >= 88.1 && deg <= 91){
    orVenY = 2.70;
  }else if (deg >= 91.1 && deg <= 125){
    orVenY = 2.15;
  }else if (deg >= 125.1 && deg <= 145){
    orVenY = 1.85;
  }else if (deg >= 145.1 && deg <= 178){
    orVenY = 1.68;
  }else if (deg >= 178.1 && deg <= 181){
    orVenY = 1.61;
  }else if (deg >= 181.1 && deg <= 215){
    orVenY = 1.68;
  }else if (deg >= 215.1 && deg <= 235){
    orVenY = 1.83;
  }else if (deg >= 235.1 && deg <= 268){
    orVenY = 2.15;
  }else if (deg >= 268.1 && deg <= 271){
    orVenY = 2.70;
  }else if (deg >= 271.1 && deg <= 315){
    orVenY = 3.60;
  }else if (deg >= 315.1 && deg <= 325){
    orVenY = 5.00;
  }else if (deg >= 325.1 && deg <= 355){
    orVenY = 6.60;
  }else if (deg >= 355.1 && deg <= 360){
    orVenY = 7.70;
  }else{
    orVenY = 2.70;
  }
  return orVenY;
}

double ConvertTemperature(int deg){
  if (deg!= 127){
    return deg - 50.0;
  } else {
    return 00.00;
  }
}