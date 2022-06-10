import 'dart:collection';
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'deck.dart';

import 'hp.dart';

class gm extends StatefulWidget {
  @override
  State<gm> createState() => _gmState();
}

class _gmState extends State<gm> {
  var imgshow = 'back';
  int i = 0;
  void inc() {
    setState(() {
      i += 1;
    });
  }

  bool actdraw = true;
  bool actless = false;
  bool actgreat = false;

  void showresult() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Container(
            child: SimpleDialog(
              children: [
                Text(
                  'Game Result',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.sports_score_sharp),
                    Text(
                      '$i',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromRGBO(212, 175, 55, 100),
                                width: 3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Text('Play Again',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => gm()));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  void tutorial() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Container(
          child: SimpleDialog(
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TUTORIAL',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              'Draw a card and guess if the next card is less than(or equal) or greater than the card shown. If guessed right the player will draw another card and continue, if wrong then the game will end. HAVE FUN!',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  var nextl;
  var cur;

  @override
  Widget build(BuildContext context) {
    var list = [];
    //2
    list.add(f1.decks());
    list.add(f2.decks());
    list.add(f3.decks());
    list.add(f4.decks());
    //3
    list.add(f5.decks());
    list.add(f6.decks());
    list.add(f7.decks());
    list.add(f8.decks());
    //4
    list.add(f9.decks());
    list.add(f10.decks());
    list.add(f11.decks());
    list.add(f12.decks());
    //5
    list.add(f13.decks());
    list.add(f14.decks());
    list.add(f15.decks());
    list.add(f16.decks());
    //6
    list.add(f17.decks());
    list.add(f18.decks());
    list.add(f19.decks());
    list.add(f20.decks());
    //7
    list.add(f21.decks());
    list.add(f22.decks());
    list.add(f23.decks());
    list.add(f24.decks());
    //8
    list.add(f25.decks());
    list.add(f26.decks());
    list.add(f27.decks());
    list.add(f28.decks());
    //9
    list.add(f29.decks());
    list.add(f30.decks());
    list.add(f31.decks());
    list.add(f32.decks());
    //10
    list.add(f33.decks());
    list.add(f34.decks());
    list.add(f35.decks());
    list.add(f36.decks());
    //1
    list.add(f37.decks());
    list.add(f38.decks());
    list.add(f39.decks());
    list.add(f40.decks());
    //11
    list.add(f41.decks());
    list.add(f42.decks());
    list.add(f43.decks());
    list.add(f44.decks());
    //12
    list.add(f45.decks());
    list.add(f46.decks());
    list.add(f47.decks());
    list.add(f48.decks());
    //13
    list.add(f49.decks());
    list.add(f50.decks());
    list.add(f51.decks());
    list.add(f52.decks());

    void curcard() {
      setState(() {
        cur = (list..shuffle()).first;
        actdraw = false;
        actgreat = true;
        actless = true;
        imgshow = cur['face'];
      });
    }

    void nextcard() {
      setState(() {
        nextl = (list..shuffle()).first;
        actdraw = true;
        actgreat = false;
        actless = false;
        imgshow = nextl['face'];
      });
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 158, 66),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Color.fromARGB(255, 34, 121, 0),
          Color.fromARGB(255, 0, 160, 11),
          Color.fromARGB(255, 45, 196, 55),
          Color.fromARGB(255, 0, 160, 11),
          Color.fromARGB(255, 34, 121, 0),
          Colors.black
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hi - Lo Card Game',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        wordSpacing: 2,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              blurRadius: 2,
                              offset: Offset(1, 1))
                        ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('User: $user',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 2,
                      )),
                  SizedBox(width: 150),
                  Text('Points: $i',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 2,
                      ))
                ],
              ),
            ),
            Image.asset(
              'assets/cards/$imgshow.png',
              height: 300,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  elevation: 5,
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color.fromRGBO(212, 175, 55, 100), width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  onPressed: actless
                      ? () {
                          nextcard();
                          if (nextl['val'] <= cur['val']) {
                            inc();
                          } else {
                            showresult();
                          }
                        }
                      : null,
                  child: Text('>=',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: 30,
                ),
                RaisedButton(
                  elevation: 5,
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color.fromRGBO(212, 175, 55, 100), width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  onPressed: actgreat
                      ? () {
                          nextcard();
                          if (cur['val'] < nextl['val'])
                            inc();
                          else {
                            showresult();
                          }
                        }
                      : null,
                  child: Text('<',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              elevation: 5,
              padding: EdgeInsets.fromLTRB(20, 22, 20, 22),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromRGBO(212, 175, 55, 100), width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Text('DRAW',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              onPressed: actdraw
                  ? () {
                      curcard();
                    }
                  : null,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton.small(
                      child: Icon(Icons.question_mark_rounded),
                      hoverElevation: 10,
                      backgroundColor: Color.fromARGB(244, 212, 175, 55),
                      onPressed: () {
                        tutorial();
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
