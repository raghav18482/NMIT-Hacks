import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nmit_hack/second.dart';
import 'package:nmit_hack/third.dart';
import 'package:nmit_hack/main.dart';



class merchant extends StatefulWidget{
  String appbars;
  merchant(this.appbars);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return merchantState(this.appbars);
  }
}

class merchantState extends State<merchant> {
  String appbars;

  merchantState(this.appbars);

  var errorso = GlobalKey<FormState>();
  var reportcard = '';
  var namees = {'HOU', 'INDUSTRIAL', '£'};
  var bloomer = '';

  @override
  void initState() {
    //IT WOULD    S    BE CAPITAL
    super.initState();
    bloomer = 'INDUSTRIAL';
  }

  TextEditingController bill = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController parking = TextEditingController();
  TextEditingController discount = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController size = TextEditingController();
  TextEditingController agency = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyled = Theme
        .of(context)
        .textTheme
        .title;

    return WillPopScope(
      onWillPop: () {
        titlepage();
      }
      ,
      child: Scaffold(
        appBar: AppBar(
          title: Text(appbars),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () {
              titlepage();
            }
            ,),

        ),
        body:
        Form(
            key: errorso,
            child: Padding(
              padding: EdgeInsets.all(30.3),
              child: ListView(children: <Widget>[
                //  Padding(padding: EdgeInsets.all(10.3), child: imager()),
                Padding(
                  padding: EdgeInsets.only(top:30.3),
                  child: TextFormField(

                    controller: bill,
                    validator: (String values) {
                      if (values.isEmpty)
                        return '*NAME IS MANDATORY';
                    },
                    style: textStyled,

                    decoration: InputDecoration(
                        labelStyle: textStyled,
                        errorStyle: TextStyle(
                            color: Colors.lightGreenAccent, fontSize: 20),
                        labelText: 'NAME',
                        hintText: "EXAMPLE :RAMAN",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10.3),
                  child: TextFormField(

                    controller: bill,
                    validator: (String values) {
                      if (values.isEmpty)
                        return '*AGENCY NAME IS MANDATORY';
                    },
                    style: textStyled,

                    decoration: InputDecoration(
                        labelStyle: textStyled,
                        errorStyle: TextStyle(
                            color: Colors.lightGreenAccent, fontSize: 20),
                        labelText: 'AGENCY NAME',
                        hintText: "EXAMPLE :TATA",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:30.3),
                  child: TextFormField(

                    controller: address,
                    validator: (String values) {
                      if (values.isEmpty)
                        return '*ADDRESS IS MANDATORY';
                    },
                    style: textStyled,

                    decoration: InputDecoration(
                        labelStyle: textStyled,
                        errorStyle: TextStyle(
                            color: Colors.lightGreenAccent, fontSize: 20),
                        labelText: 'ADDRESS',
                        hintText: "EXAMPLE :YELANKHA...",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10.3),
                  child: TextFormField(
                    style: textStyled,
                    controller: parking,
                    validator: (String values) {
                      if (values.isEmpty)
                        return '*E-MAIL IS MANDATORY';
                    },

                    decoration: InputDecoration(
                        labelText: 'E-MAIL ADDRESS',
                        labelStyle: textStyled,
                        errorStyle: TextStyle(
                            color: Colors.lightGreenAccent, fontSize: 20),
                        hintText: 'EXAMPLE : abc@gmail.com',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:30.3),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: discount,
                          validator: (String values) {
//                        bool isNumberic(String values){
//                          if(values==null)
//                            {return false;}
//                          return int.parse(values, onErrors:(e)=>null);
//                        }
                            if (values.isEmpty)
                              return 'NECESSARY TO HAVE TRUCK NUMBER';
//                        else
//                          if(isNumberic!=1)
//                            return 'type in right format';
                          },

                          style: textStyled,
                          decoration: InputDecoration(
                              labelText: 'TRUCK NUMBER',
                              labelStyle: textStyled,
                              errorStyle: TextStyle(
                                  color: Colors.lightGreenAccent, fontSize: 20),
                              hintText: 'EXAMPLE : KA-FD234',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),


                    ],
                  ),
                ),




                Padding(
                  padding: EdgeInsets.only(top:10.3),
                  child: TextFormField(
                    style: textStyled,
                    controller: parking,
                    validator: (String values) {
                      if (values.isEmpty)
                        return 'PHONE NUMBER';
                    },

                    decoration: InputDecoration(
                        labelText: 'PHONE NUMBER',
                        labelStyle: textStyled,
                        errorStyle: TextStyle(
                            color: Colors.lightGreenAccent, fontSize: 20),
                        hintText: 'EXAMPLE : 5687XXXXXX',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:40.3),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: discount,
                          validator: (String values) {
//                        bool isNumberic(String values){
//                          if(values==null)
//                            {return false;}
//                          return int.parse(values, onErrors:(e)=>null);
//                        }
                            if (values.isEmpty)
                              return '*SIZE OF TRUCK IS REQUIRED';
//                        else
//                          if(isNumberic!=1)
//                            return 'type in right format';
                          },

                          style: textStyled,
                          decoration: InputDecoration(
                              labelText: 'TRUCK SIZE',
                              labelStyle: textStyled,
                              errorStyle: TextStyle(
                                  color: Colors.lightGreenAccent, fontSize: 20),
                              hintText: 'EXAMPLE : IN TON',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),


                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(30.3),
                  child: Text(
                    reportcard,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.3),
                  child:
                  RaisedButton (
                    color: Theme
                        .of(context)
                        .primaryColorLight,
                    textColor: Theme
                        .of(context)
                        .primaryColorDark,
                    child: Text(
                      "SUBMIT",
                      textScaleFactor: 1,
                    ),
                    highlightElevation: 10.0,
                    onPressed: () {
                      setState(() {
                        if (errorso.currentState.validate()) {
                          reportcard = memer();
                          titlepage();
                        }

                      });
                    },
                  ),

                ),
              ]),
            )),
      ),

    );
  }

  void titlepage() {
    Navigator.pop(context);
  }

  String memer() {
    int hasd = generatenumber();
    String bills = bill.text;
    String addresss = address.text;
    String discounts = discount.text;
    String parkings = parking.text;
    double sizes = double.parse(size.text);
    double phones = double.parse(phone.text);
    String agencys = agency.text;



    String report =
        'WELCOME IN OUR COUMINITY ';
    return report;
  }

  void nemer() {
    bill.text = '';
    discount.text = '';
    parking.text = '';
    phone.text = '';
    size.text = '';
    agency.text = '';
    reportcard = '';
    address.text='';
    bloomer = 'INDUSTRIAL';
  }

  void toshowthevalue(String alpino) {
    setState(() {
      this.bloomer = alpino;
    });
  }

  int generatenumber() {
    var random = Random();
    int force = random.nextInt(20);

    return force;
  }

}
