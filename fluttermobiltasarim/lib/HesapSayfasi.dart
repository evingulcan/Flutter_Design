import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HesapSayfasi extends StatefulWidget {
  @override
  _HesapSayfasiState createState() => _HesapSayfasiState();
}

class _HesapSayfasiState extends State<HesapSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 270,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ButtonBar(
                        children: [
                          SizedBox(
                            height: 45,
                            width: 120,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: (){},
                              child: Text("Ödemelerim",style: TextStyle(color: Colors.white),),

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 120,
                            child: RaisedButton(
                              color: Colors.red,
                              onPressed: (){},
                              child: Text("Kazancım",style: TextStyle(color: Colors.white),),

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
