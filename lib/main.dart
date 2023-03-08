import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Twitter',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primarySwatch: Colors.lightBlue,
        ),
        home: Scaffold(
          appBar: AppBar(
            shape: const Border(
                bottom: BorderSide(color: Colors.grey, width: 0.5)),
            leading: IconButton(
              icon: const Icon(
                FontAwesomeIcons.circleUser,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),
            backgroundColor: Colors.black,
            title: Container(
                padding: const EdgeInsets.all(16),
                alignment: const Alignment(-0.04, 1),
                child: const Icon(
                  FontAwesomeIcons.twitter,
                  size: 30,
                  color: Colors.blue,
                )),
          ),
          body: Container(
            height: 35,
          ),
        ));
  }
}
