import 'package:flutter/material.dart';
import 'package:nmit_hack/main.dart';
import 'dart:math';
import 'package:nmit_hack/third.dart';

class second extends StatefulWidget{
  String appbars;
  second(this.appbars);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return secondState(this.appbars);
  }
}

class secondState extends State<second>{
  String appbars;
  secondState(this.appbars);
  var errorso = GlobalKey<FormState>();
  var reportcard = '';
  var namees = {'HOUSEHOLD', 'INDUSTRIAL', '£'};
  var bloomer = '';

  @override
  void initState() {
    //IT WOULD    S    BE CAPITAL
    super.initState();
    bloomer = 'INDUSTRIAL';
  }

  TextEditingController bill = TextEditingController();
  TextEditingController parking = TextEditingController();
  TextEditingController discount = TextEditingController();

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
              key: errorso,
              child: Padding(
                padding: EdgeInsets.all(3.3),
                child: ListView(children: <Widget>[
                //  Padding(padding: EdgeInsets.all(10.3), child: imager()),
                  Padding(
                    padding: EdgeInsets.all(10.3),
                    child: TextFormField(

                      controller: bill,
                      validator: (String values) {
                        if (values.isEmpty)
                          return 'PLEASE STARTING LOCATION';
                      },
                      style: textStyled,

                      decoration: InputDecoration(
                          labelStyle: textStyled,
                          errorStyle:TextStyle(color:Colors.lightGreenAccent,fontSize: 20) ,
                          labelText: 'STARTING LOCATION',
                          hintText: "EXAMPLE :YELANKHA",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.3),
                    child: TextFormField(
                      style: textStyled,
                      controller: parking,
                      validator: (String values) {
                        if (values.isEmpty)
                          return 'PLEASE ENTER YOUR DESTINATION';
                      },

                      decoration: InputDecoration(
                          labelText: 'DESTINATION',
                          labelStyle: textStyled,
                          errorStyle:TextStyle(color:Colors.lightGreenAccent,fontSize: 20) ,
                          hintText: 'EXAMPLE : YASVANTPUR',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.3),
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
                                return 'WEIGHT ?';
//                        else
//                          if(isNumberic!=1)
//                            return 'type in right format';
                            },

                            style: textStyled,
                            decoration: InputDecoration(
                                labelText: 'WEIGHT',
                                labelStyle: textStyled,
                                errorStyle:TextStyle(color:Colors.lightGreenAccent,fontSize: 20) ,
                                hintText: 'EXAMPLE : 40 TON',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Container(
                          width: 30,
                        ),
                        Expanded(
                          child: DropdownButton<String>(
                            items: namees.map((String letters) {
                              return DropdownMenuItem<String>(
                                value: letters,
                                child: Text(letters),
                              );
                            }).toList(),
                            ///// items work is to build the combobox
                            /////items,value,onchanged are properties of dropdownbtton
                            onChanged: (String alpino) {
                              toshowthevalue(alpino);
                            },

                            value: bloomer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.3),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            textColor: Theme.of(context).primaryColorDark,
                            color: Theme.of(context).accentColor,
                            child: Text(
                              "TOTAL PAYMENT",
                              textScaleFactor: 1,
                            ),
                            highlightElevation: 10.0,
                            onPressed: () {
                              setState(() {
                                if (errorso.currentState.validate()) {
                                  reportcard = memer();
                                }
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            textColor: Theme.of(context).primaryColorLight,
                            child: Text(
                              " RESET",
                              textScaleFactor: 1,
                            ),
                            highlightElevation: 10.0,
                            onPressed: () {
                              setState(() {
                                nemer();
                              });
                            },
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
                    child:  RaisedButton(
                        color: Theme.of(context).primaryColorLight,
                        textColor: Theme.of(context).primaryColorDark,
                        child: Text(
                          "BOOKING",
                          textScaleFactor: 1,
                        ),
                        highlightElevation: 10.0,
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder:(context){
                            return third('GRAB YOUR TRUCK');
                          })
                          );
                        },
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
  String memer() {
    int hasd =generatenumber();
   String  bills = bill.text;
   String parkings = parking.text;
    double discounted = double.parse(discount.text);
    double discounts = discounted * 10;
    double total =  30*generatenumber()+discounts*15;
    if (total == 0) {
      total = 1500;
    }
    String report =
        'DEAR COUSTOMERS YOUR STARTING LOCATION IS "$bills" AND DESTINATION IS "$parkings"  AND YOUR  TOTAL DISTANCE IS "$hasd KM"AND USE FOR"$bloomer "AND WEIGHT IS "$discounted TON"  AND TOTAL PAYMENT "$total"  ';
    return report;
  }

  void nemer() {
    bill.text = '';
    discount.text = '';
    parking.text = '';
    reportcard = '';
    bloomer = 'INDUSTRIAL';
  }

  void toshowthevalue(String alpino) {
    setState(() {
      this.bloomer = alpino;
    });
  }
  int generatenumber() {
    var random = Random();
    int force= random.nextInt(20);

    return force ;
  }

}