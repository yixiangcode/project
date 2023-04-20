import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'about.dart';
import 'game1.dart';
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
        appBar: AppBar(
          title: Center(
            child: Text(
                style: TextStyle(
                  fontFamily: 'Dongle',
                  fontSize: 50.0,
                  color: Colors.yellowAccent,
                ),
                'Mini Game Project'),
          ),
        ),
        body: Game(),
      ),
    );
  }
}

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/avatar.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 300.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: Text(
                    style: TextStyle(
                      fontFamily: 'Dongle',
                      fontSize: 30.0,
                    ),
                    'Game 1'),
                //child: Image.asset('images/test.png'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Game1()));
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 300.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: Text(
                    style: TextStyle(
                      fontFamily: 'Dongle',
                      fontSize: 30.0,
                    ),
                    'Game 2'),
                //child: Image.asset('images/test.png'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Game2()));
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 300.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: Text(
                    style: TextStyle(
                      fontFamily: 'Dongle',
                      fontSize: 30.0,
                    ),
                    'Game 3'),
                //child: Image.asset('images/test.png'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Game3()));
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 300.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: Text(
                    style: TextStyle(
                      fontFamily: 'Dongle',
                      fontSize: 30.0,
                    ),
                    'About'),
                //child: Image.asset('images/test.png'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 300.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: Text(
                    style: TextStyle(
                      fontFamily: 'Dongle',
                      fontSize: 30.0,
                    ),
                    'Exit'),
                //child: Image.asset('images/test.png'),
                onPressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else {
                    exit(0);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
