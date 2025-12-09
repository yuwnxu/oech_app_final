import 'package:flutter/material.dart';
import ' sign_in_page.dart';
import 'sign_up_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController pageController = PageController();
  int pageIndex = 0;

  void changePage(int index) {
    setState(() {
      pageIndex = index;
      pageController.animateTo(pageController.position.maxScrollExtent, duration: Duration(seconds: 1),
          curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              controller: pageController,
              children: [
                //первый экран
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 80),
                      child: Image.asset('assets/images/icon 1.png'),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Quick Delivery At Your\nDoorstep',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF0560FA),
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Enjoy quick pick-up and delivery to\nyour destination',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF3A3A3A),
                          fontFamily: 'Roboto',
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
                //второй экран
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 150),
                      child: Image.asset('assets/images/icon 2.png'),
                    ),
                     SizedBox(height: 40),
                     Text(
                      'Flexible Payment',
                      style: TextStyle(
                          color: Color(0xFF0560FA),
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Different modes of payment either\nbefore and after delivery without\nstress',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF3A3A3A),
                          fontFamily: 'Roboto',
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
                //третий экран
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 100),
                      child: Image.asset('assets/images/icon 3.png'),
                    ),
                    SizedBox(height: 60),
                    Text(
                      'Real-time Tracking',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF0560FA),
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Track your packages/items from the\ncomfort of your home till final destination',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF3A3A3A),
                          fontFamily: 'Roboto',
                          fontSize: 16
                      ),
                    ),
                     SizedBox(height: 25),

                    if (pageIndex == 2) Padding(
                      padding:  EdgeInsets.only(left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUpPage())
                          );
                        },
                        child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF0560FA),
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Color(0xFF0560FA), width: 1),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),
                        ),
                      ),
    ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              color: Color(0xFFA7A7A7),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SignInPage())
                            );
                          },
                          child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Color(0xFF0560FA),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          pageIndex != 2
              ? SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    changePage(2);
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Color(0xFF0560FA), width: 1),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0560FA)
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (pageIndex < 2) {
                      changePage(pageIndex + 1);
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF0560FA),
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Color(0xFF0560FA), width: 1),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
              :  SizedBox.shrink(),
        ],
      ),
    );
  }
}
