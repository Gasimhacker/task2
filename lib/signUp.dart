import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  bool showContent = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  pageLoading() {
    setState(() {
      showContent = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showContent = false;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => home(),
            ));
      });
    });
  } // the home page will be opened after 3 seconds

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FA),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('images/signup-icon.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Name',
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.phone),
                        hintText: 'Enter a Phone Number',
                        labelText: 'Phone',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.calendar_today),
                        hintText: 'Enter your date of birth',
                        labelText: 'Date Of Birth',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(FontAwesomeIcons.marsAndVenus),
                        hintText: 'Enter your Gender',
                        labelText: 'Gender',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(
                          Icons.lock,
                        ),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(
                          Icons.lock,
                        ),
                        hintText: 'repeat your password',
                        labelText: 'confirm password',
                      ),
                    ),
                  ),
                  Visibility(
                      visible: showContent,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: CircularProgressIndicator(),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Colors.blueAccent, width: 3)),
                        color: Colors.white,
                        onPressed: () {
                          pageLoading();
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
