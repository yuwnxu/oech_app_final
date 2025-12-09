import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class TransactionSuccess2Page extends StatefulWidget {
  const TransactionSuccess2Page({super.key});

  @override
  State<TransactionSuccess2Page> createState() =>
      _TransactionSuccess2PageState();
}

class _TransactionSuccess2PageState extends State<TransactionSuccess2Page> {
  int frameIndex = 0;
  late Timer _timer;

  final List<String> checkFrames = [
    'assets/images/success 1.png',
    'assets/images/success 2.png',
    'assets/images/success 1.png',
    'assets/images/success 2.png',
  ];

  @override
  void initState() {
    super.initState();

    int ticks = 0;
    int maxTicks = checkFrames.length;

    _timer = Timer.periodic( Duration(milliseconds: 100), (t) {
      setState(() {
        if (frameIndex < checkFrames.length - 1) {
          frameIndex++;
        }
      });

      ticks++;
      if (ticks >= maxTicks) {
        _timer.cancel();
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
                    checkFrames[frameIndex],
                    width: 150,
                    height: 150,
                  ),
                   SizedBox(height: 40),

                   Text(
                    'Delivery Successful',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                   SizedBox(height: 8),

                  Text(
                    'Your item has been delivered successfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 40),

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
                                    color: Colors.black54,
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                          (route) => false,
                    );
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
