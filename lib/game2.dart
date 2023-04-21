import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math';

class Game2 extends StatefulWidget {
  const Game2({Key? key}) : super(key: key);

  @override
  State<Game2> createState() => _Game2State();
}

class _Game2State extends State<Game2> {
  @override
  int rock = 1;
  int paper = 2;
  int scissor = 3;
  String image = "avatar";
  int ?ai;
  String status="Tap to Start";
  int ?userInput;
  void randomize() {
    ai = Random().nextInt(3) + 1;
    if(ai == scissor){
      image = "scissor";
      if(userInput == rock){
        status = "You Win";
      }else if(userInput == paper){
        status = "You Lose";
      }else{
        status = "Draw";
      }
    }else if(ai == rock){
      image = "rock";
      if(userInput == scissor){
        status = "You Lose";
      }else if(userInput == paper){
        status = "You Win";
      }else{
        status = "Draw";
      }
    }else if(ai == paper){
      image = "paper";
      if(userInput == scissor){
        status = "You Win";
      }else if(userInput == rock){
        status = "You Lose";
      }else{
        status = "Draw";
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                style: TextStyle(
                  color: Colors.cyanAccent,
                  fontFamily: 'Dongle',
                  fontSize: 60.0,
                ),
                'Rock Paper Scissor')),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => UI()));
          },
          icon: Hero(tag: "game2", child: Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Text(
              style: TextStyle(
                fontFamily: 'Dongle',
                fontSize: 120.0,
                color: Colors.yellowAccent,
              ),status),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              // Left Dice
              child: TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Image.asset(
                  'images/$image.jpg',
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  // Left Dice
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        userInput = rock;
                        randomize();
                      });
                    },
                    child: Image.asset(
                      'images/rock.jpg',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  // Left Dice
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        userInput = paper;
                        randomize();
                      });
                    },
                    child: Image.asset(
                      'images/paper.jpg',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  // Left Dice
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        userInput = scissor;
                        randomize();
                      });
                    },
                    child: Image.asset(
                      'images/scissor.jpg',
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
