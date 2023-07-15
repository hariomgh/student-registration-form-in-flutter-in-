import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: StudentForm(),
  ));
}

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _course;
  late String _city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text('Help us personalise your learning experience',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),

              TextFormField(
                decoration: InputDecoration(
                    labelText: "Student's Name",
                    prefixIcon: Icon(CupertinoIcons.person_fill)
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email ID',
                    prefixIcon: Icon(CupertinoIcons.mail_solid)
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email ID';
                  }
                  // You can add additional email validation here if needed
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Course',
                    prefixIcon: Icon(CupertinoIcons.book)
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your course';
                  }
                  return null;
                },
                onSaved: (value) {
                  _course = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'City/District',
                    prefixIcon: Icon(CupertinoIcons.location_solid)
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                onSaved: (value) {
                  _city = value!;
                },
              ),
              SizedBox(height: 50),
              // RaisedButton(
              //   onPressed: () {
              //     if (_formKey.currentState.validate()) {
              //       _formKey.currentState.save();
              //       // Process the form data, e.g., send it to a server
              //       // or save it locally
              //       print('Name: $_name');
              //       print('Email ID: $_email');
              //       print('Course: $_course');
              //       print('City: $_city');
              //     }
              //   },
              //   child: Text('Submit'),
              // ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Color(0xFF800000)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  // onPressed: _sendOTP,
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    child: Text(
                      'Send OTP',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

