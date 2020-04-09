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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Colors.amberAccent
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(75)),
                  MyImage(height: 90, width: 90,),
                  Padding(padding: EdgeInsets.all(5)),
                  MyAppName(),
                  Padding(padding: EdgeInsets.all(20)),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Email',),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  LoginButton(),
                  Padding(padding: EdgeInsets.all(35)),
                  SignUpPageButton(),
                  Padding(padding: EdgeInsets.all(10)),
                ],
        ),
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15)),
                BackButton(),
                Padding(padding: EdgeInsets.all(75)),
              ],
            ),
            Container(
              width: 300,
              height: 400,
              child: Column(
                  children: <Widget>[
                    MyImage(height: 80, width: 80,),
                    Padding(padding: EdgeInsets.all(5)),
                    Text("Sign Up", style: TextStyle(
                        color: Color(0xFF42A5F5),
                        fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    Padding(padding: EdgeInsets.all(8)),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Full Name'),
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    SubmitButton(),
                    ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
          'Login',
          style: TextStyle(fontSize: 25)
      ),
      color: Color(0xFF42A5F5),
      textColor: Colors.amberAccent[400],
      onPressed: () {},
    );
  }
}

class SignUpPageButton extends StatelessWidget {
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 250,
        ),
        RaisedButton(
          child: Text(
              'Sign up',
              style: TextStyle(fontSize: 18)
        ),
          color: Color(0x0000A5F5),
          textColor: Colors.black54,
          onPressed: () {
            navigateToSubPage(context);
          },
        ),
      ],
    );
  }
}

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
          'Submit',
          style: TextStyle(fontSize: 25)
      ),
      color: Color(0xFF42A5F5),
      textColor: Colors.white,
      onPressed: () {},
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
          '<< Back',
          style: TextStyle(fontSize: 20)
      ),
      color: Color(0xAA42A5FF),
      textColor: Colors.white54,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class MyAppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: 20,
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
  MyImage({Key key, this.height, this.width}) : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage("https://www.iconsdb.com/icons/preview/orange/dice-xxl.png"),
        height: this.height,
        width: this.width,
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


