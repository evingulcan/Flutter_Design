import 'package:flutter/material.dart';

class YorumSayfasi extends StatefulWidget {
  @override
  _YorumSayfasiState createState() => _YorumSayfasiState();
}

class _YorumSayfasiState extends State<YorumSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sentiment_dissatisfied_outlined,
                    color: Colors.red,
                    size: 60,
                  ),
                  Text("Yorum Yapılmamış",style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              ),

    );
  }
}
