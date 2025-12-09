import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'new_password.dart';

class Verification extends StatefulWidget { //верификация
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  Timer? _timer;
  int _remaining = 60;
  String _pinCode = "";

  final defaultPinTheme = PinTheme(
    width: 40,
    height: 40,
    textStyle: TextStyle(
      fontSize: 20,
      color: Color(0xFF3A3A3A),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xFFCFCFCF)),
      borderRadius: BorderRadius.circular(3),
      color: Colors.white,
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 40,
    height: 40,
    textStyle: TextStyle(
      fontSize: 20,
      color: Color(0xFF3A3A3A),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xFF0560FA), width: 2),
      borderRadius: BorderRadius.circular(3),
      color: Colors.white,
    ),
  );

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer?.cancel();
    setState(() {
      _remaining = 60;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remaining > 0) {
        setState(() {
          _remaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget buildTimer() {
    return Row(
      children: [
        Center(
          child: Text(
            _remaining > 0
                ? 'If you didn\'t receive code, resend in $_remaining s'
                : 'If you didn\'t receive code,',
            style: TextStyle(
              color: Color(0xFFA7A7A7),
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        if (_remaining == 0)
          TextButton(
            onPressed: () {
              startTimer();
             //
            },
            child: Text(
              'resend',
              style: TextStyle(
                color: Color(0xFF0560FA),
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isButtonEnabled = _pinCode.length == 6;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 30, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Enter the 6 digit numbers sent to your email',
                  style: TextStyle(
                    color: Color(0xFFA7A7A7),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 32),
                Center(
                  child: Pinput(
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    showCursor: false,
                    onChanged: (pin) {
                      setState(() {
                        _pinCode = pin;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                buildTimer(),
                SizedBox(height: 37),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NewPassword())
                    );
                  },
                  child: Center(
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: isButtonEnabled
                          ? Color(0xFF0560FA)
                          : Color(0xFFA7A7A7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Send New Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
