import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'home.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50.0),
              // decoration: BoxDecoration(border: Border.all()),
              child: Text('Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'JosefinSans-Medium',
                    color: Color(0xff18172B),
                    fontSize: 30.0,
                  )),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15.0),
              // decoration: BoxDecoration(border: Border.all()),
              child: Text('Access account',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff6E80B0)),
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 148.0,
                height: 56.0,
                margin: EdgeInsets.only(top: 35, left: 10.0, right: 10.0),
                padding: EdgeInsets.all(0.0),
                // decoration: BoxDecoration(border: Border.all()),
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/icons/google_logo.png',
                    width: 24,
                    height: 24,
                  ),
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                )),
            Container(
                width: 148.0,
                height: 56.0,
                margin: EdgeInsets.only(top: 35, left: 10.0, right: 10.0),
                padding: EdgeInsets.all(0.0),
                // decoration: BoxDecoration(border: Border.all()),
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/icons/facebook_logo.png',
                    width: 24,
                    height: 24,
                  ),
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
              // decoration: BoxDecoration(border: Border.all()),
              child: Text('or Login with Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff6E80B0))),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Form(
                key: _formKey,
                child: Column(children: [
                  Container(
                    // decoration: BoxDecoration(border: Border.all()),
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            child: Text(
                              'Email',
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontFamily: 'JosefinSans-Medium'),
                            ),
                          ),
                          Container(
                              height: 56,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: 'sag7@gmail.com',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    filled: true,
                                    fillColor: Colors.grey[200]),
                              ))
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            child: Text(
                              'Password',
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontFamily: 'JosefinSans-Medium'),
                            ),
                          ),
                          Container(
                              height: 56,
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      SimpleLineIcons.eye,
                                      color: Color(0xffB3BCD5),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    filled: true,
                                    fillColor: Colors.grey[200]),
                              ))
                        ]),
                  )
                ]))
          ],
        ),
        Row(children: [
          Container(
                padding: EdgeInsets.all(25.0),
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                height: 110.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff6D61F2),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ))
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Don’t have an account?", style: TextStyle(color: Color(0xff6E80B0)),),
          Text(' Register', style: TextStyle(color: Color(0xff6D61F2)))
        ],)
      ]),
    );
  }
}
