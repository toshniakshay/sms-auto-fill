import 'package:flutter/material.dart';

import 'package:sms_autofill/sms_autofill.dart';

import 'otp_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'auto fill otp',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    _listenForCode();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Login'),
          onPressed: () async {
            final appSignature = await SmsAutoFill().getAppSignature;
            print(appSignature);
            Navigator.push(context, MaterialPageRoute(builder: (c) => OTPScreen()));
          },
        ),
      ),
    );
  }

  void _listenForCode() async {
    SmsAutoFill().listenForCode;
  }
}


