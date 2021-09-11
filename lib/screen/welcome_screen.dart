import 'package:flutter/material.dart';
import 'package:flutter_education_ui/screen/login_screen.dart';
import 'package:flutter_education_ui/screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'main.jpg',
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 75,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 85),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
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
