import 'package:flutter/material.dart';
import ' sign_in_page.dart';
import 'verification.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();

  bool _isButtonEnabled = false;

  bool _areAllFieldsFilled() {
    return emailController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
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
                    'Forgot Password',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Enter your email address',
                    style: TextStyle(
                      color: Color(0xFFA7A7A7),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Email Adress ',
                    style: TextStyle(
                      color: Color(0xFFA7A7A7),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: TextField(
                      controller: emailController,
                      onChanged: (text) {
                        setState(() {
                          _isButtonEnabled = _areAllFieldsFilled();
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(
                            color: Color(0xFFA7A7A7),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(
                            color: Color(0xFFA7A7A7),
                            width: 1,
                          ),
                        ),
                        hintText: '***********@mail.com',
                        hintStyle: TextStyle(
                          color: Color(0xFFCFCFCF),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),

                        SizedBox(height: 35),
                        GestureDetector(
                          onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verification())
                          );
                          },
                            child: Center(
                              child: Container(
                                width: 350,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: _isButtonEnabled ? Color(0xFF0560FA) : Color(
                                      0xFFA7A7A7),
                                  borderRadius: BorderRadius.circular(4),
                                ),

                                child: Center(
                                  child: Text(
                                    'Send OTP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => SignInPage())
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Row(
                                children: [
                                  Text('Remember password?', style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA7A7A7),
                                  ),),
                                  Text('Sign In',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF0560FA),
                                      )
                                  ),
                                ]
                            ),

                          ),
                        ),
      ]
    )
                )
            )
        )
    );
  }
}
