import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.3,
              child: Image.asset(
                'main3.jpg',
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.supervised_user_circle,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Welcome Mrs/mr : ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Mehrab',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 470,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded_Widget(
                            icon: Icons.list_alt, text: 'Your Grade'),
                        Expanded_Widget(
                            icon: Icons.star_border_rounded, text: 'Your Star'),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded_Widget(icon: Icons.sports, text: 'Your Sport'),
                        Expanded_Widget(
                            icon: Icons.home_work, text: 'Your Home Work'),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded_Widget(
                            icon: Icons.health_and_safety, text: 'Your Health'),
                        Expanded_Widget(
                            icon: Icons.rule_folder_rounded,
                            text: 'School Rule'),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded_Widget(
                            icon: Icons.fastfood_rounded,
                            text: 'Food Reservation'),
                        Expanded_Widget(
                            icon: Icons.more_horiz_rounded,
                            text: 'About School'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 100,
              bottom: 0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 65, vertical: 12),
                  primary: Colors.red[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text('Exit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Expanded_Widget extends StatelessWidget {
  final String text;
  final IconData icon;

  const Expanded_Widget({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
