// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

final _lighttheme = ThemeData(
  brightness: Brightness.light,
  textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.black),
);

final _darktheme = ThemeData(
  brightness: Brightness.dark,
  textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.white),
);

final _iconDarkMode = Icon(Icons.light_mode_rounded);

final _iconLightMode = Icon(Icons.mode_night_sharp);

class _MyAppState extends State<MyApp> {
  bool _swValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _swValue ? _darktheme : _lighttheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _swValue = !_swValue;
                  });
                },
                icon: _swValue ? _iconLightMode : _iconDarkMode ,
                tooltip:
                    _swValue ? 'Ativar modo escuro' : 'Ativar modo claro',
              ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_swValue == false)
                Text('Light Theme')
              else
                Text('Dark Theme'),
            ],
          ),
        ),
      ),
    );
  }
}
