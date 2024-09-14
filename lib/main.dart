import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Color> Mycolor = [
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.red
  ];

  // List<Widget> mylist = List.generate(
  //   100,
  //   (index) => Text("${index + 1}",style: TextStyle(fontSize: double.parse(index.toString())),),
  // );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Toosyta"),
          ),
          body: ListView.separated(
              separatorBuilder: (context, index) {
                return Container(
                  height: 50,
                );
              },
              itemCount: Mycolor.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  height: 300,
                  color: Mycolor[index],
                );
              })),
    );
  }
}
