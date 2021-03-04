import 'package:flutter/material.dart';
import 'package:fluttermobiltasarim/Admin.dart';
import 'package:fluttermobiltasarim/altBar.dart';
import 'package:fluttermobiltasarim/textField.dart';
import 'package:fluttermobiltasarim/ustBarvelcerikCard.dart';
import 'package:fluttermobiltasarim/ustButtons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Tasarım',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFD9515c),
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 94.7 / 100,
          child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  /************* */
                  ustButtons(),
                  /************* */
                  Admin(),
                  /************* */
                  textField(),
                  /************** */
                  Expanded(
                    /*********************** */
                    child: ustBarvelcerikCard(),
                    /************************ */
                  ),
                ],
              ),
            ),
          ),


        /********************** */
        floatingActionButton: altBar(),
        /********************** */
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}