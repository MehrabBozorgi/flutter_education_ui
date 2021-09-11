import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_education_ui/Widget/BackButton_Widget.dart';
import 'package:flutter_education_ui/Widget/TextField_Widget.dart';
import 'package:flutter_education_ui/screen/login_screen.dart';

import 'main_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int fav = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'main2.jpg',
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            BackButton_Widget(),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 25),
                      TextField_Widget(
                        label: 'User Name',
                        prefixIcon: Icons.person,
                        suffixIcon: Icons.highlight_remove,
                      ),
                      TextField_Widget(
                        label: 'Email',
                        prefixIcon: Icons.email_rounded,
                        suffixIcon: Icons.highlight_remove,
                      ),
                      TextField_Widget(
                        label: 'Phone',
                        prefixIcon: Icons.phone_android_rounded,
                        suffixIcon: Icons.highlight_remove,
                      ),
                      TextField_Widget(
                        label: 'User Name',
                        prefixIcon: Icons.lock_rounded,
                        suffixIcon: Icons.remove_red_eye_outlined,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                'Gender :',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Woman',

                                    ),
                                    Radio(
                                        toggleable: true,
                                        activeColor: Colors.white,
                                        value: 0,
                                        groupValue: fav,
                                        onChanged: (int? value) {
                                          setState(() {
                                            fav = value!;
                                          });
                                        }),
                                  ],
                                ),
                                SizedBox(width: 15),
                                Row(
                                  children: [

                                    Text(
                                      'Men',

                                    ),
                                    Radio(
                                        toggleable: true,
                                        activeColor: Colors.white,
                                        value: 1,
                                        groupValue: fav,
                                        onChanged: (int? value) {
                                          setState(() {
                                            fav = value!;
                                          });
                                        }),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          elevation: 10,
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MainScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Have a account?',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                            Text(
                              ' Login',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30)
                    ],
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
