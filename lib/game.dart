import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'main.dart';

class MazePage extends StatefulWidget {
  MazePage({Key? key}) : super(key: key);

  @override
  _MazePageState createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
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
                  'You WIN')),
          actions: [
            TextButton(
              child: Text(
                  style: TextStyle(
                    color: Colors.brown,
                    fontFamily: 'Dongle',
                    fontSize: 30.0,
                  ),
                  'Home'),
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
                  'Next Game'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MazePage()));
              },
            ),
          ],
        ),
      );
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
                'The Maze')),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => UI()));
          },
          icon: Hero(tag: "game1", child: Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Maze(
            player: MazeItem(
              'https://cdn.discordapp.com/attachments/781883325156818945/1098504334351794176/mikuconfused.jpg',
              ImageType.network,
            ),
            columns: 12,
            rows: 12,
            wallThickness: 6.0,
            wallColor: Colors.yellowAccent,
            finish: MazeItem(
                'https://thumbs.dreamstime.com/z/finish-flag-symbol-simple-vector-style-isolated-white-illustration-flat-111639068.jpg',
                ImageType.network),
            onFinish: () => openDialog(),
          ),
        ),
      ),
    );
  }
}
