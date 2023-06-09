import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'about.dart';
import 'game.dart';
import 'game2.dart';
import 'game3.dart';

void main() {
  runApp(const UI());
}

class UI extends StatelessWidget {
  const UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Center(
              child: Text(
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontFamily: 'Dongle',
                    fontSize: 60.0,
                  ),
                  'Exit?')),
          actions: [
            TextButton(
              child: Text(
                  style: TextStyle(
                    color: Colors.brown,
                    fontFamily: 'Dongle',
                    fontSize: 30.0,
                  ),
                  'No'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UI()));
              },
            ),
            TextButton(
              child: Text(
                  style: TextStyle(
                    color: Colors.brown,
                    fontFamily: 'Dongle',
                    fontSize: 30.0,
                  ),
                  'Yes'),
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else {
                  exit(0);
                }
              },
            ),
          ],
        ),
      );
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/maze.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Text(
                style: TextStyle(
                  fontFamily: 'Dongle',
                  fontSize: 120.0,
                  color: Colors.yellowAccent,
                ),
                'Mini Game'),
            SizedBox(
              height: 10.0,
            ),
            Hero(
              tag: "game1",
              child: SizedBox(
                width: 350.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: StadiumBorder()),
                  child: Text(
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontFamily: 'Dongle',
                        fontSize: 50.0,
                      ),
                      'The Maze'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MazePage()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Hero(
              tag: "game2",
              child: SizedBox(
                width: 350.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: StadiumBorder()),
                  child: Text(
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontFamily: 'Dongle',
                        fontSize: 50.0,
                      ),
                      'Rock Paper Scissor'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Game2()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            SizedBox(
              width: 350.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: StadiumBorder()),
                child: Text(
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'Dongle',
                      fontSize: 50.0,
                    ),
                    'Minesweeper'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Hero(
              tag: "about",
              child: SizedBox(
                width: 350.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: StadiumBorder()),
                  child: Text(
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontFamily: 'Dongle',
                        fontSize: 50.0,
                      ),
                      'About'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            SizedBox(
              width: 350.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange, shape: StadiumBorder()),
                child: Text(
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'Dongle',
                      fontSize: 50.0,
                    ),
                    'Exit'),
                onPressed: () => openDialog(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
