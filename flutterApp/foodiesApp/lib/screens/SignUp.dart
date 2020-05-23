import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('SignUp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("SignUp",
              style: TextStyle(
                  fontSize: 20.0
              ),),
            TextField(
              decoration: InputDecoration(
                  hintText: "jia@gmail.com",
                  labelText: "Email"
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "make alphanumeric password",
                  labelText: "Password"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "abc restaurant",
                  labelText: "Enter restaurant Name"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "090078601",
                  labelText: "Enter Restaurant Number"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "somewhere on earth",
                  labelText: "Enter restaurant address"
              ),
            ),
            MaterialButton(onPressed: (){},
              child: Text("SignUp"),
            ),

          ],
        ),
      ),
    );
  }
}
