import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/wajiha/AndroidStudioProjects/flutter_app/lib/pages/HomePage.dart';
import 'package:flutterapp/screens/SignUp.dart';
import 'dart:async';
import 'screens/LoginPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jia Cousines",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: Splash(),
      routes: {
        '/Login':(context)=>LoginPage(),
        '/SignUp':(context)=>SignUp(),
        '/homePage':(context)=>HomePage()
      },
    );
  }
}
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>{
      Navigator.of(context).pushNamed('/homePage')
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/cheeseburger.png'),
            ),
            SizedBox(height: 10,),
            Text("Foodieeeee!",style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              backgroundColor: Colors.yellow,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red)
            )
          ],
        ),
      ),
    );
  }
}
