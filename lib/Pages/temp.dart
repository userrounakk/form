import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<String> cities = ['Brt', 'Ktm', 'Drn'];
  String gender;
  String sCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'email@domain.com',
                      suffixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
