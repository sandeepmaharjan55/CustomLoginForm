import 'package:flutter/material.dart';

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //add image
          Center(
            child: Image.asset(
              "images/face.png",
              width: 90,
              height: 90,
              // color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  gapPadding: 3.3,
                  borderRadius: BorderRadius.circular(3.3),
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Please enter your name";
                } else {
                  print("All things are good");
                }
              },
              // validator: (value) => value.isEmpty
              //     ? 'Please enter your name'
              //     : 'All things are good',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  gapPadding: 3.3,
                  borderRadius: BorderRadius.circular(3.3),
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Please enter your Password";
                } else {
                  print("All things are good");
                }
              },
              // validator: (value) => value.isEmpty
              //     ? 'Please enter your Password'
              //     : 'All things are good',
            ),
          ),
          //add buttons
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text("All things good")));
                        }
                      },
                      child: Text("Submit")),
                ),
                RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.reset();
                      }
                    },
                    child: Text("Clear")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
