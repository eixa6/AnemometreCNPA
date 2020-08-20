import 'dart:async';
import 'dart:io';

import 'package:anemometre_cnpa/DataListPaysage.dart';
import 'package:anemometre_cnpa/DataListPortrait.dart';
import 'package:anemometre_cnpa/RequestData.dart';
import 'package:anemometre_cnpa/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



import 'Data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    new Timer.periodic(Duration(minutes: 12), (Timer t) => setState((){}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
            //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: FutureBuilder<List<Data>>(
              future: fetchDatas(http.Client()),
              builder: (context, snapshot){
                var mediaQueryData = MediaQuery.of(context);
                final width = mediaQueryData.size.width;
                final height = mediaQueryData.size.height;

                if (MediaQuery.of(context).orientation == Orientation.portrait){
                  if (snapshot.data == null){
                    return Container( width:width, height: height, alignment:Alignment.center,child: CircularProgressIndicator());
                  }else{
                    if (snapshot.data[snapshot.data.length - 1].vM3.toString() == "255"){
                      return snapshot.hasData
                          ? DataListPortrait(datas: snapshot.data, nbDatas: snapshot.data.length - 2)
                          : Center(child: CircularProgressIndicator());
                    }else{
                      return snapshot.hasData
                          ? DataListPortrait(datas: snapshot.data, nbDatas: snapshot.data.length)
                          : Center(child: CircularProgressIndicator());
                    }
                  }
                } else {
                  if (snapshot.data == null){
                    return Container( width:width, height: height, alignment:Alignment.center,child: CircularProgressIndicator());
                  }else{
                    if (snapshot.data[snapshot.data.length - 1].vM3.toString() == "255"){
                      return snapshot.hasData
                          ? DataListPaysage(datas: snapshot.data, nbDatas: snapshot.data.length - 2)
                          : Center(child: CircularProgressIndicator());
                    }else{
                      return snapshot.hasData
                          ? DataListPaysage(datas: snapshot.data, nbDatas: snapshot.data.length)
                          : Center(child: CircularProgressIndicator());
                    }
                  }
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}




