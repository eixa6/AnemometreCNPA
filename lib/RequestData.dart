import 'package:anemometre_cnpa/Data.dart';
import 'package:anemometre_cnpa/DataSupp.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


Future<List<Data>> fetchDatas(http.Client client) async{
  final response = await client.get('https://anemometre.azurewebsites.net/vent');
  return compute(parseData, response.body);
}

List<Data> parseData(String reponseBody){
  final parsed = json.decode(reponseBody).cast<Map<String, dynamic>>();
  return parsed.map<Data>((json) => Data.fromJson(json)).toList();
}


