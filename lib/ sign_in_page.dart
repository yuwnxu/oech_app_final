import 'package:flutter/material.dart';
import 'home.dart';
import 'sign_up_page.dart';
import 'forgot_password.dart';

class SignInPage extends StatefulWidget { //вход в аккаунт
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool agree = false;
  bool _obscureText = true;
  bool _isButtonEnabled = false;

  bool _areAllFieldsFilled() {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
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
                            'Welcome Back',
                            style: TextStyle(
                              color: Color(0xFF3A3A3A),
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Fill in your email and password to continue',
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

                          SizedBox(height: 25),
                          Text(
                            'Password',
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
                              controller: passwordController,
                              onChanged: (text) {
                                setState(() {
                                  _isButtonEnabled = _areAllFieldsFilled();
                                });
                              },
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
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
                                hintText: '********',
                                hintStyle: TextStyle(
                                  color: Color(0xFFCFCFCF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            child: Row(
                                children: [
                                  Checkbox(
                                    value: agree,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        agree = newValue ?? false;
                                      });
                                    },
                                    activeColor: Color(0xFF0560FA),
                                    checkColor: Colors.white,
                                  ),
                                  SizedBox(width: 0),
                                  Text('Remember password', style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xFFA7A7A7)
                                  ),),
                                  SizedBox(width: 35),
                                  GestureDetector(
                                      onTap: () { Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => ForgotPassword())
                                      );
                                      },
                                      child: Text('Forgot Password?', style: TextStyle(
                                      color: Color(0xFF0560FA),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto'
                                  ),
                                  )
                                  )
                                ]
                            ),
                          ),
                          SizedBox(height: 35),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
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
                                      'Log In',
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
                                  MaterialPageRoute(builder: (context) => SignUpPage())
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                  children: [
                                    Text('Already have an account?', style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFA7A7A7),
                                    ),),
                                    Text('Sign Up',
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
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 100),
                            child: Column(
                              children: [
                                Text('or log in using',
                                  style: TextStyle(
                                      color: Color(0xFFA7A7A7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto'
                                  ),),
                                SizedBox(height: 10),
                                Image.asset('assets/images/google.png'),
                                SizedBox(height: 20)
                              ],
                            ),
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}