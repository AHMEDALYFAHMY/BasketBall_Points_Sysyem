// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('PointsCounter APP'),
          ),
          //floatingActionButton: FloatingActionButton(onPressed: (){}),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 42,
                          ),
                        ),
                        Text(
                          '$teamAPoints',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          color: Colors.orange,
                          child: Text('Add 1 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 2;
                            });
                          },
                          color: Colors.orange,
                          child: Text('Add 2 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          minWidth: 70,
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 3;
                            });
                          },
                          color: Colors.orange,
                          child: Text('Add 3 Point'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 42,
                          ),
                        ),
                        Text(
                          '$teamBPoints',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          color: Colors.orange,
                          child: Text('Add 1 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 2;
                            });
                          },
                          color: Colors.orange,
                          child: Text('Add 2 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 3;
                            });
                          },
                          color: Colors.orange,
                          child: Text('Add 3 Point'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                    });
                    setState(() {
                      teamBPoints = 0;
                    });
                  },
                  color: Colors.orange,
                  child: Text('Reset'),
                ),
              ],
            ),
          ),
        ));
  }
}
