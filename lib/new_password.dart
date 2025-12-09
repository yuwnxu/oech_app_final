import 'package:flutter/material.dart';
import 'home.dart';

class NewPassword extends StatefulWidget { //новый пароль
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscureText = true;
  bool _isButtonEnabled = false;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  bool _areAllFieldsFilled() {
    return passwordController.text.isNotEmpty &&
        confirmController.text.isNotEmpty;
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
                      'New Password',
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Enter new password',
                      style: TextStyle(
                        color: Color(0xFFA7A7A7),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
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
                        ]
                    )
                )
            )
        )
                );
  }
}
