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
  String aiImage = "avatar";
  String userImage = "rps.png";
  int ?ai;
  String status="Tap to Start";
  int ?userInput;
  void randomize() {
    ai = Random().nextInt(3) + 1;
    if(ai == scissor){
      aiImage = "scissor";
      if(userInput == rock){
        status = "You Win";
      }else if(userInput == paper){
        status = "You Lose";
      }else{
        status = "Draw";
      }
    }else if(ai == rock){
      aiImage = "rock";
      if(userInput == scissor){
        status = "You Lose";
      }else if(userInput == paper){
        status = "You Win";
      }else{
        status = "Draw";
      }
    }else if(ai == paper){
      aiImage = "paper";
      if(userInput == scissor){
        status = "You Win";
      }else if(userInput == rock){
        status = "You Lose";
      }else{
        status = "Draw";
      }
    }
  }

  void userStatus(){
    if(userInput == scissor){
      userImage = "scissor.jpg";
    }else if(userInput == rock){
      userImage = "rock.jpg";
    }else if(userInput == paper){
      userImage = "paper.jpg";
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
                fontSize: 100.0,
                color: Colors.yellowAccent,
              ),status),
          Text(
              style: TextStyle(
                fontFamily: 'Dongle',
                fontSize: 40.0,
                color: Colors.yellowAccent,
              ),"AI : "),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Image.asset(
                  'images/$aiImage.jpg',
                ),
              ),
            ),
          ),
          Text(
              style: TextStyle(
                fontFamily: 'Dongle',
                fontSize: 40.0,
                color: Colors.yellowAccent,
              ),"You : "),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                  });
                },
                child: Image.asset(
                  'images/$userImage',
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        userInput = rock;
                        randomize();
                        userStatus();
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
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        userInput = paper;
                        randomize();
                        userStatus();
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
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        userInput = scissor;
                        randomize();
                        userStatus();
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
