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
            Switch(
                value: _swValue,
                activeColor: Colors.green[700],
                activeTrackColor: Colors.blueAccent[800],
                onChanged: (nwValue) {
                  setState(() {
                    _swValue = nwValue;
                  });
                }),
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
