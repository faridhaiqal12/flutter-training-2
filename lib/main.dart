import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<Color> myColor = [
    Colors.black,
    Colors.amberAccent,
    Colors.cyan,
    Colors.limeAccent
  ];

  List<Widget> myList = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
        fontSize: 20 + double.parse(index.toString()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toosyta"),
          backgroundColor: Colors.pink,
        ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
