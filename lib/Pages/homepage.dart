import 'package:flutter/material.dart';
import 'package:registrtion/Pages/temp.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  List<String> cities = [
    'Kathmandu',
    'Dharan',
    'Biratnagar',
    'Itahari',
  ];
  String sCity;
  String gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      labelText: 'Full Name', suffixIcon: Icon(Icons.person)),
                  validator: (String value) =>
                      value.isEmpty ? 'Required' : null,
                ),
                SizedBox(height: 20),
                DropdownButton(
                    hint: Text('Select City'),
                    isExpanded: true,
                    value: sCity,
                    items: cities.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      sCity = value;
                      setState(() {});
                    }),
                TextFormField(
                  controller: address,
                  decoration: InputDecoration(
                      labelText: 'Address', suffixIcon: Icon(Icons.place)),
                  validator: (String value) =>
                      value.isEmpty ? 'Required' : null,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text('Gender:'),
                    Radio(
                      value: 'male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    Text('Male'),
                    Radio(
                      value: 'female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    Text('Female'),
                  ],
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'email@domain.com',
                    suffixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) =>
                      value.isEmpty ? 'Required' : null,
                ),
                TextFormField(
                  controller: mobile,
                  decoration: InputDecoration(
                    labelText: 'Mobile',
                    suffixIcon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (String value) =>
                      value.isEmpty ? 'Required' : null,
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  validator: (String value) =>
                      value.isEmpty ? 'Required' : null,
                ),
                RaisedButton(
                  onPressed: () {
                    if (key.currentState.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    }
                  },
                  child: Text('Sign Up'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
