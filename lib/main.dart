import 'package:card_game/gm.dart';
import 'package:card_game/hp.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(initialRoute: '/hp', routes: {
        '/hp': (context) => hpg(),
        '/gm': (context) => gm(),
      }),
    );
