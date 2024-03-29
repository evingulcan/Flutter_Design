import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttermobiltasarim/Profil.dart';

class ustButtons extends StatefulWidget {
  @override
  _ustButtonsState createState() => _ustButtonsState();
}

class _ustButtonsState extends State<ustButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: IconButton(
            icon: Icon(Icons.chevron_left),
            color: Colors.white,
            iconSize: 55,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Spacer(
          flex: 45,
        ),
        /********** */
        Profil(),
        /********** */
        Spacer(
          flex: 45,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.logout),
                color: Colors.white,
                iconSize: 40,
                onPressed: () {
                  exit(0);
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.white,
                iconSize: 40,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}