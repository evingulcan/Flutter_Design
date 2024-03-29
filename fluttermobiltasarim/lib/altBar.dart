import 'package:flutter/material.dart';

class altBar extends StatefulWidget {
  @override
  _altBarState createState() => _altBarState();
}
class _altBarState extends State<altBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
              child: new FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.alarm_on_rounded,
                  size: 30,
                ),
                elevation: 0,
                backgroundColor: Color(0xFFFD9515c),
              ),
            ),
            SizedBox(
              height: 25,
              child: new FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.message,
                  size: 30,
                ),
                elevation: 0,
                backgroundColor: Color(0xFFFD9515c),
              ),
            ),
            new FloatingActionButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.home_outlined,
                  size: 35,
                ),
              ),
              elevation: 0,
              backgroundColor: Color(0xFFFD9515c),
            ),
            SizedBox(
              height: 25,
              child: new FloatingActionButton(
                onPressed: () {},
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFbc4b4f),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.person_sharp,
                    size: 30,
                  ),
                ),
                elevation: 0,
                backgroundColor: Color(0xFFFD9515c),
              ),
            ),
            SizedBox(
              height: 25,
              child: new FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.menu_rounded,
                  size: 30,
                ),
                elevation: 0,
                backgroundColor: Color(0xFFFD9515c),
              ),
            ),
          ],

    );
  }
}