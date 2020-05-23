import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login",
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
            MaterialButton(onPressed: (){},
            child: Text("Login"),
              color: Colors.red,
            ),
            Text("Create Account")
          ],
        ),
      ),
    );
  }
}
