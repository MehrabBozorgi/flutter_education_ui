import 'package:flutter/material.dart';

class BackButton_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.all(15),
        child: Card(
          elevation: 10,
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Icon(Icons.arrow_back_outlined),
          ),
        ),
      ),
    );
  }
}