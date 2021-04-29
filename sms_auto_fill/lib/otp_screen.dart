import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  @override
  void initState() {
    super.initState();
    _listenForCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: PinFieldAutoFill(
            codeLength: 6,
            onCodeChanged: (val) {
              print(val);
            },

          ),
        ),
      ),
    );
  }

  void _listenForCode() async {
    SmsAutoFill().listenForCode;
  }
}
