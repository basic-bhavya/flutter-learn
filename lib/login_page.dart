import 'package:flutter/material.dart';
import 'package:hey_look/bg_image.dart';
import 'package:hey_look/main.dart';

class LoginPage extends StatefulWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(fit: StackFit.expand, children: [
          BgImage(),
          Center(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Form(
                          child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter username",
                                labelText: "Username"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter password",
                                labelText: "Password"),
                            obscureText: true,
                          )
                        ],
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));
                        },
                        child: Text("Sign In"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent)),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          ),
        ]));
  }
}
