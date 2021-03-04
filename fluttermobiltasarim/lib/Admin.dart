import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Text(
            "Admin ",
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Icon(
            Icons.verified_user_outlined,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}