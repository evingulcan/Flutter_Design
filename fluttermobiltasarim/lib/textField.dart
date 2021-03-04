import 'package:flutter/material.dart';

class textField extends StatefulWidget {
  @override
  _textFieldState createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 94 / 100,
        height: 35,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 4, left: 35),
            filled: true,
            fillColor: Color(0xFFFbc4b4f),
            hintText: 'Admin benim :)',
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.6),
            ),
            suffixIcon: Icon(
              Icons.border_color,
              color: Colors.white.withOpacity(0.6),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFD9515c), width: 0.0),
            ),
            enabledBorder:
            UnderlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
