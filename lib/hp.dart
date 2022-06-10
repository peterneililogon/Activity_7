import 'package:card_game/gm.dart';
import 'package:flutter/material.dart';

String user = '';

class hpg extends StatefulWidget {
  @override
  State<hpg> createState() => _hpgState();
}

class _hpgState extends State<hpg> {
  TextEditingController _user = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 158, 66),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/bg/hehe.png',
                      height: 300,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buildPN(),
              buildBT1()
            ],
          ),
        )));
  }

  Widget buildPN() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Welcome Player!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            wordSpacing: 5,
          ),
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xffFFD700),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          width: 300,
          child: TextField(
            controller: _user,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                hintText: 'Enter Player Name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                )),
          ),
        )
      ],
    );
  }

  Widget buildBT1() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      width: 100,
      child: RaisedButton(
          elevation: 5,
          onPressed: () {
            user = _user.text;
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => gm()));
          },
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            side:
                BorderSide(color: Color.fromRGBO(212, 175, 55, 100), width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
          child: Text('START',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
