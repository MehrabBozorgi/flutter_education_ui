import 'package:flutter/material.dart';
import 'package:flutter_education_ui/Widget/BackButton_Widget.dart';
import 'package:flutter_education_ui/Widget/TextField_Widget.dart';
import 'package:flutter_education_ui/screen/main_screen.dart';
import 'package:flutter_education_ui/screen/signup_screen.dart';

class LoginScreen extends StatelessWidget {
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
                height: 300,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    TextField_Widget(
                      prefixIcon: Icons.email_outlined,
                      suffixIcon: Icons.highlight_remove,
                      label: 'Email',
                    ),
                    TextField_Widget(
                      prefixIcon: Icons.lock_rounded,
                      suffixIcon: Icons.remove_red_eye_outlined,
                      label: 'Password',
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 10,
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Enter to Account',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have a account?',
                            style: TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          Text(
                            ' Create account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
