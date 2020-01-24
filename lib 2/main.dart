import 'package:flutter/material.dart';
import 'package:nmit_hack/second.dart';
import 'package:nmit_hack/third.dart';
import 'package:nmit_hack/secondhalf.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.yellow,
            accentColor: Colors.yellowAccent),
        title: 'Flutter Demo',
      home: MyHomePage(title:''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Expanded(
        child:
            Padding(padding: EdgeInsets.all(10.3), child: location()),),
    Padding(padding: EdgeInsets.only(bottom :10.3 ,left:40.3,right:40.3), child:
               RaisedButton(
                color: Colors.white60,
                textColor: Theme.of(context).primaryColorDark,

                child: Text(
                  "START",
                  textScaleFactor: 1,
                ),
                highlightElevation: 10.0,
                onPressed: () {

                 // Navigator.push(context,MaterialPageRoute(builder:(context){
                //    return second('GRAB YOUR TRUCK');
                //  })
                 // );
                },
              ),

    ),
            Padding(padding: EdgeInsets.only(bottom :20.3 ,left:40.3,right:40.3), child:
            RaisedButton(
              color: Colors.greenAccent,
              textColor: Theme.of(context).primaryColorDark,

              child: Text(
                "SIGN UP",
                textScaleFactor: 1,
              ),
              highlightElevation: 10.0,
              onPressed: () {

                Navigator.push(context,MaterialPageRoute(builder:(context){
                  return secondhalf('DETAILS');
                })
                );
              },
            ),

            ),
          ],
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class imager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage Ima = AssetImage('images1/IMG_20200123_215727.JPG');
    Image image = Image(image: Ima, height: 525.0, width: 525.0);

    return Container(
      child: image,
    );
  }
}
class location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage Ima = AssetImage('images2/IMG-20200123-WA0005.jpg');
    Image image = Image(image: Ima, height: 525.0, width: 525.0);

    return Container(
      child: image,
    );
  }
}