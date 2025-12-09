import 'dart:async';
import 'package:flutter/material.dart';
import 'transaction_success_2.dart';

class TransactionLoadingPage2 extends StatefulWidget {
  const TransactionLoadingPage2({super.key});

  @override
  State<TransactionLoadingPage2> createState() =>
      _TransactionLoadingPage2State();
}

class _TransactionLoadingPage2State extends State<TransactionLoadingPage2> {
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
            builder: (context) => TransactionSuccess2Page(),
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
            SizedBox(height: 200),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    loadingFrames[frameIndex],
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 80),
                  Text(
                    'Rate Rider',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0560FA),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                          (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Icon(
                          Icons.star_border,
                          color: Colors.grey,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Icon(
                              Icons.chat_bubble_outline,
                              color: Color(0xFF0560FA),
                              size: 20,
                            ),
                             SizedBox(width: 8),
                             Expanded(
                              child: TextField(
                                maxLines: 3,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Add feedback',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(left: 16, right: 16, bottom: 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0560FA),
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
