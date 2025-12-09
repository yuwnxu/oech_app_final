import 'dart:async';
import 'package:flutter/material.dart';
import 'transaction_success.dart';
import 'home.dart';

class TransactionLoadingPage extends StatefulWidget {
  const TransactionLoadingPage({super.key});

  @override
  State<TransactionLoadingPage> createState() => _TransactionLoadingPageState();
}

class _TransactionLoadingPageState extends State<TransactionLoadingPage> {
  int frameIndex = 0;
  late Timer _timer;

  final List<String> loadingFrames = [
    'assets/images/Frame 1.png',
    'assets/images/Frame 2.png',
    'assets/images/Frame 3.png',
    'assets/images/Frame 4.png'
  ];

  @override
  void initState() {
    super.initState();

    int ticks = 0;
    int maxTicks = 24;

      _timer = Timer.periodic(Duration(milliseconds: 150), (t) {
      setState(() {
        frameIndex = (frameIndex + 1) % loadingFrames.length;
      });

      ticks++;
      if (ticks >= maxTicks) {
        _timer.cancel();
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TransactionSuccessPage(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    loadingFrames[frameIndex],
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Your rider is on the way to your destination',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.black87),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Tracking Number R-7458-4567-4434-5854',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Color(0xFF0560FA)),
                  ),
                ],
              ),
            ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0560FA),
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Track my item',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF0560FA)),
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                  child: Text(
                    'Go back to homepage',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0560FA),
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
