import 'package:flutter/material.dart';

class TextField_Widget extends StatelessWidget {
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String label;

  const TextField_Widget({
    required this.prefixIcon,
    required this.suffixIcon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white38,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}