
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 45.0,
      decoration: BoxDecoration(
        color: Color(0xFFFbc4b4f),
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: IconButton(
        onPressed: () {
          return showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "Soru ve önerilerinizi bize yazın :)",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),





              content: SizedBox(
                height: 264,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             IconButton(
                                    icon: Icon(
                                      Icons.sentiment_dissatisfied_outlined,
                                      color: Colors.black54,
                                      size: 40,
                                    ),
                                 onPressed: () {
                                      setState(() {
                                        color: Colors.red;
                                      });

                                 },
                                // splashRadius: 40,
                                 //splashColor: Colors.red,
                                  ),

                                 IconButton(
                                  icon: Icon(
                                    Icons.sentiment_neutral_rounded,
                                  color: Colors.black54,
                                    size: 40,
                                  ),
                                   onPressed: () {
                                     setState(() {
                                       color: Colors.yellow;
                                     });

                                   },
                                 ),

                              IconButton(
                                icon: Icon(
                                  Icons.sentiment_neutral,
                                  color: Colors.black54,
                                  size: 40,
                                ),
                                onPressed: () {
                                  setState(() {
                                    color: Colors.deepOrange;
                                  });

                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.sentiment_very_satisfied,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                onPressed: () {
                                  setState(() {
                                    color: Colors.green;
                                  });

                                },
                              ),
                            ],
                          ),



                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8)),
                            width: 400,
                            height: 150,
                            child: Center(
                              child: TextField(
                                onChanged: (value){},
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                 fillColor: Colors.green,
                                 filled: true,
                                  hintText: "Bir şeyler yazın",
                                ),
                              ),

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Gönder",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          );
        },
        icon: Icon(Icons.announcement),
        color: Colors.white,
        iconSize: 40,
      ),
    );
  }
}