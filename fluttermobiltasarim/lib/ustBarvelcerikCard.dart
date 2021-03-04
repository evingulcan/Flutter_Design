import 'package:flutter/material.dart';
import 'package:fluttermobiltasarim/AyarlarSayfasi.dart';
import 'package:fluttermobiltasarim/HesapSayfasi.dart';
import 'package:fluttermobiltasarim/Message.dart';
import 'package:fluttermobiltasarim/YorumSayfasi.dart';

class ustBarvelcerikCard extends StatefulWidget {
  @override
  _ustBarvelcerikCardState createState() => _ustBarvelcerikCardState();
}

class _ustBarvelcerikCardState extends State<ustBarvelcerikCard> {

  int seciliSayfa = 0;
  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  Widget sayfaGoster(int seciliSayfa) {
      if (seciliSayfa == 0) {
      return YorumSayfasi();
    } else if (seciliSayfa == 1) {
      return AyarlarSayfasi();
    } else if (seciliSayfa == 2) {
      return HesapSayfasi();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 67 / 100,
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Color(0xFFFD9515c),
                currentIndex: seciliSayfa,
                onTap: sayfaDegistir,
                type: BottomNavigationBarType.fixed,
                iconSize: 35,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 70.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFbc4b4f),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.person_pin_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    title: SizedBox(
                      height: 0,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 70.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFbc4b4f),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    title: SizedBox(
                      height: 0,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        width: 70.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFbc4b4f),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.euro,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    title: SizedBox(
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            /********* */
          Message(),
            /********* */
          ],
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 98 / 100,
            height: MediaQuery.of(context).size.height ,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: Card(
                color: Colors.white,
                child: sayfaGoster(seciliSayfa),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
