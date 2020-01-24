import 'package:flutter/material.dart';
import 'package:nmit_hack/main.dart';
import 'package:nmit_hack/second.dart';
import 'dart:math';


class third extends StatefulWidget{
  String appbars;
  third(this.appbars);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return thirdState(this.appbars);
  }
}

class thirdState extends State<third>{
  String appbars;
  thirdState(this.appbars);





  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (){ secondpage();}
        ,
        child:Scaffold(
        appBar: AppBar(
        title:Text(appbars),
    leading: IconButton(icon:Icon(Icons.arrow_back),
    onPressed: (){
    secondpage();
    }
    ,),
    ),
        body:


        Center(

            child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            Expanded(
            child:
              imager()),


                    Padding(padding: EdgeInsets.all(10.3), child: Text("TRUCK'S DRIVER DETAILS: NAME->  RUPAK KUMAR"),),

                    Padding(padding: EdgeInsets.all(10.3), child: Text("                            PHONE NO.S-> 9156762543"),),

                    Padding(padding: EdgeInsets.all(10.3), child: Text(" TRUCK'S   DETAILS->  NUMBERPLATE->  KA-IK-4634"),),

                    Padding(padding: EdgeInsets.all(10.3), child: Text("                        SIZE-> SMALL "),),
                  Padding(
                    padding: EdgeInsets.all(30.3),
                    child:  RaisedButton(
                      color: Theme.of(context).primaryColorLight,
                      textColor: Theme.of(context).primaryColorDark,
                      child: Text(
                        "CONFIRM",
                        textScaleFactor: 1,
                      ),
                      highlightElevation: 10.0,
                      onPressed: () {
                        oemer(context);
                      },
                    ),

                  )

   ],) ,) ,

        ),);
  }
  void secondpage(){

    Navigator.pop(context);
  }
  }

class imager extends StatelessWidget {
@override
Widget build(BuildContext context) {
  AssetImage Ima = AssetImage('images1/IMG_20200123_215727.JPG');
  Image image = Image(image: Ima, height: 425.0, width: 925.0);

  return Container(
    child: image,
  );
}
}

void oemer(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("THANK YOU"),
    content: Text("You Booking Is Confirmed"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

