import 'package:flutter/material.dart';
import 'transaction_loading.dart';

class Receipt extends StatefulWidget {
  const Receipt({super.key});

  @override
  State<Receipt> createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              children: [
              Container(
              height: 56,
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        size: 18, color: Color(0xFF0560FA)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Send a package',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFA7A7A7),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                    width: double.infinity,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: 8, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Package Information',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF0560FA),
                          ),
                        ),
                        SizedBox(height: 16),

                        Text(
                          'Origin details',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Mbaraugba, Ovom Amaa Asa, Abia state',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            height: 1.3,
                          ),
                        ),
                        Text(
                          '+234 56543 96854',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            height: 1.3,
                          ),
                        ),

                        SizedBox(height: 16),

                        Text(
                          'Destination details',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '1. 19 Adenorno Alabi close, lagos',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            height: 1.3,
                          ),
                        ),
                        Text(
                          '+234 70644 80655',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            height: 1.3,
                          ),
                        ),

                        SizedBox(height: 16),

                        Text(
                          'Other details',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),

                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Package Items',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Books ans stationary, Garri Ngwa',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFFF9900),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Weight of items',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '1000kg',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFFF9900),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Worth of items',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'N50,000',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFFF9900),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Tracking Number',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'R-7458-4567-4434-5854',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFFF9900),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: 8, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charges',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF0560FA),
                          ),
                        ),
                        SizedBox(height: 12),

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Charges',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'N2,500.00',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFFFF9900),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Instant delivery',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'N300.00',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFFFF9900),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tax and Service Charges',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'N200.00',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFFFF9900),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12),
                        Divider(color: Color(0xFFE0E0E0), height: 1),
                        SizedBox(height: 12),

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Package total',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'N3000.00',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFF9900),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),

                  Row(
                      children: [
                  Expanded(
                  child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF0560FA)),
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
                'Edit package',
                style: TextStyle(
                    fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0560FA),
                ),
            ),
                  ),
    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0560FA),
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionLoadingPage())
                          );},
                        child: Text(
                          'Make payment',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                      ],
                  ),
                      ],
                  ),
              ),
            ),
              ],
            ),
        ),
    );
  }
}

