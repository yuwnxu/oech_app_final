import 'package:flutter/material.dart';
import 'package:oech_app_final/receipt_2.dart';


class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  bool step1 = false;
  bool step2 = false;
  bool step3 = false;
  bool step4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
                children: [
                Image.asset('assets/images/map.png', height: 308, width: 390),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Tracking Number',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/icon 4.png',
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'R-7458-4567-4434-5854',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0560FA),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(right: 225),
              child: Text(
                'Package Status',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              step1 = !step1;
                            });
                          },
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: step1 ? Color(0xFF0560FA) : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: step1 ? Color(0xFF0560FA) : Colors.grey,
                                width: 2,
                              ),
                            ),
                            child: step1
                                ? Icon(
                              Icons.check,
                              size: 12,
                              color: Colors.white,
                            )
                                : null,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 32,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            step1 = !step1;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Courier requested',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: step1 ? Color(0xFF0560FA) : Color(0xFF3A3A3A),
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'July 7 2022   08:00am',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: step1 ? Colors.orange : Colors.grey,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              step2 = !step2;
                            });
                          },
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: step2 ? Color(0xFF0560FA) : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: step2 ? Color(0xFF0560FA) : Colors.grey,
                                width: 2,
                              ),
                            ),
                            child: step2
                                ? Icon(
                              Icons.check,
                              size: 12,
                              color: Colors.white,
                            )
                                : null,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 32,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            step2 = !step2;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Package ready for delivery',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: step2 ? Color(0xFF0560FA) : Color(0xFF3A3A3A),
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'July 7 2022   08:30am',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: step2 ? Colors.orange : Colors.grey,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Column(
                children: [
                GestureDetector(
                onTap: () {
            setState(() {
            step3 = !step3;
            });
            },
                child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: step3 ? Color(0xFF0560FA) : Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: step3 ? Color(0xFF0560FA) : Colors.grey,
                        width: 2,
                      ),
                    ),
                  child: step3
                      ? Icon(
                    Icons.check,
                    size: 12,
                    color: Colors.white,
                  )
                      : null,
                ),
                ),
                  Container(
                    width: 2,
                    height: 32,
                    color: Colors.grey.shade300,
                  ),
                ],
                ),
                      SizedBox(width: 8),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              step3 = !step3;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Package in transit',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: step3 ? Color(0xFF0560FA) : Color(0xFF3A3A3A),
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'July 7 2022   10:30am',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: step3 ? Colors.orange : Colors.grey,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  step4 = !step4;
                                });
                              },
                              child: Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: step4 ? Color(0xFF0560FA) : Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: step4 ? Color(0xFF0560FA) : Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                child: step4
                                    ? Icon(
                                  Icons.check,
                                  size: 12,
                                  color: Colors.white,
                                )
                                    : null,
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 32,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                step4 = !step4;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Package delivered',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: step4 ? Color(0xFF0560FA) : Color(0xFF3A3A3A),
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'July 7 2022   10:30am',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: step4 ? Colors.orange : Colors.grey,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Receipt2())
                          );},
                        child: Text(
                          'View Package Info',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
            ),
                ],
            ),
        ),
    );
  }
}
