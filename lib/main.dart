import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'signUp.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Flutter Application',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application.
  final String title;
  MyHomePage({required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            this.widget.title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'images/login.jpg',
                    width: 40,
                    height: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email Address',
                      labelText: "Email Address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Visibility(
                    visible: showContent,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: CircularProgressIndicator(),
                    )),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.red, Colors.blueAccent])),
                    child: FlatButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        pageLoading();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Dont have an account?!',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 15),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyForm(),
                                      ));
                                })
                        ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
