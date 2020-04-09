import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Colors.amberAccent
      ),
      home: AnotherPage(),
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(75)),
                  MyImage(),
                  Padding(padding: EdgeInsets.all(20)),
                  MyAppName(),
                  Padding(padding: EdgeInsets.all(20)),
                  SignUpPageButton(),
                  Padding(padding: EdgeInsets.all(20)),
                ],
        ),
      ),
    );
  }
}

class SignUpPageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
          'Sign up',
          style: TextStyle(fontSize: 25)
    ),
      color: Color(0xFF42A5F5),
      textColor: Colors.amberAccent[700],
      onPressed: () {},
    );
  }
}

class MyAppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: 40,
          fontFamily: "Calibri, Arial, Tahoma, Serif",
        color: Color(0xFF42A5F5)
        ),
        children: <TextSpan>[
          TextSpan(text: 'Toy\'s ', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(text: 'DICE', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage("https://www.iconsdb.com/icons/preview/orange/dice-xxl.png"),
        height: 180,
        width: 180,
      ),
    );
  }
}




//            Container(
//              decoration: BoxDecoration(
////            color: const Color(0xff7c94b6),
//                  color: Colors.white54,
//                  border: Border.all(
//                    color: const Color(0xff7c94b6),
//                    width: 0.6,
//                  ),
//                  borderRadius: BorderRadius.circular(10),
//                  boxShadow: [
//                    BoxShadow(
//                        blurRadius: 5,
//                        color: Colors.grey,
//                        offset: Offset.fromDirection(1, 4),
//                        spreadRadius: 2
//                    )
//                  ]
//              ),
//              height: 300,
//              width: 250,
//              child: Column(
//                children: <Widget>[
//                  TextField(
//                  ),
//                  TextField(
//                  ),
//                  Text("Some Text",
//                    style: TextStyle(
//                        fontSize: 30,
//                        color: Colors.teal,
//                        fontWeight: FontWeight.w400
//                    ),
//                  ),
//                  SignUpPageButton(),
//                  GestureDetector(
//                    onTap: () {
//                      print('MyButton was tapped!');
//                    },
//                    child: Container(
//                      height: 36.0,
//                      padding: const EdgeInsets.all(8.0),
//                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(5.0),
//                        color: Colors.lightGreen[500],
//                      ),
//                      child: Center(
//                        child: Text('Engage'),
//                      ),
//                    ),
//                  )
//                ],
//              ),
//            ),






//
//class MyLoginPage extends StatefulWidget {
////  MyHomePage({Key key, this.title}) : super(key: key);
////  final String title;
//  @override
//  _MyLoginPageState createState() => _MyLoginPageState();
//}
//
//class _MyLoginPageState extends State<MyLoginPage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////      appBar: AppBar(
////        title: Text(widget.title),
////      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.headline4,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}


