import 'package:flutter/material.dart';
import ' sign_in_page.dart';
import 'home.dart';


class SignUpPage extends StatefulWidget { //регистрация
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;
  bool agree = false;
  bool _isButtonEnabled = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  bool _areAllFieldsFilled() {
    return emailController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        numberController.text.isNotEmpty &&
        passwordController.text.isNotEmpty && agree == true &&
        confirmController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an account',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Complete the sign up process to get started',
                  style: TextStyle(
                    color: Color(0xFFA7A7A7),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Full Name',
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
                    controller: nameController,
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
                      hintText: 'Ivanov Ivan',
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
                  'Phone Number',
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
                    controller: numberController,
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
                      hintText: '+7(999)999-99-99',
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
                  'Email Adress',
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
                      hintText: '*********@mail.com',
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
                SizedBox(height: 25),

                Text(
                  'Confirm Password',
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
                    controller: confirmController,
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
                Row(
                  children: [
                    Checkbox(
                      value: agree,
                      onChanged: (bool? newValue) {
                        setState(() {
                          agree = newValue ?? false;
                          _isButtonEnabled = _areAllFieldsFilled();
                        });
                      },
                      activeColor: Colors.blue,
                      checkColor: Colors.white,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'By ticking this box, you agree to our\n',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA7A7A7),
                            ),
                          ),
                          TextSpan(
                            text: 'Terms and conditions and private policy',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFEBBC2E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                            'Sign Up',
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
                        Text('Already have an account?', style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFA7A7A7),
                                      ),),
                        Text('Sign in',
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
                      Text('or sign in using',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
