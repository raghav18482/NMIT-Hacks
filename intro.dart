import 'package:flutter/material.dart';
import 'package:nmit_hack/main.dart';
import 'dart:math';
import 'package:nmit_hack/third.dart';
import 'package:nmit_hack/second.dart';
import 'package:nmit_hack/secondhalf.dart';

class intro extends StatefulWidget{
  String appbars;
  intro(this.appbars);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return introState(this.appbars);
  }
}

class introState extends State<intro>{
  String appbars;
  introState(this.appbars);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyled = Theme.of(context).textTheme.title;

    return WillPopScope(
      onWillPop: (){ titlepage();}
      ,
      child:Scaffold(
        appBar: AppBar(
          title:Text(appbars),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed: (){
              titlepage();
            }
            ,),
        ),
        body:
        Form(

            child: Padding(
              padding: EdgeInsets.all(3.3),
              child: ListView(children: <Widget>[
                //  Padding(padding: EdgeInsets.all(10.3), child: imager()),






                Padding(
                  padding: EdgeInsets.all(30.3),
                  child: Text(
                  ' '
                  ,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),

              ]),
            )),
      ),

    );
  }

  void titlepage(){

    Navigator.pop(context);
  }
}