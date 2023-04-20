import 'package:flutter/material.dart';
import 'main.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
                    'About')),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UI()));
              },
              icon: Icon(Icons.arrow_back),
            ),
            backgroundColor: Colors.purple),
        backgroundColor: Colors.cyanAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpg'),
                radius: 70.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                  style: TextStyle(
                    fontFamily: 'Dongle',
                    fontSize: 50.0,
                  ),
                  'Group 13'),
              Text(
                  style: TextStyle(
                    fontFamily: 'Dongle',
                    fontSize: 50.0,
                  ),
                  'Group Member'),
              Card(
                color: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Cheng Yi Xiang (B230031A)',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontFamily: 'Dongle',
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                color: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Teo Jun Chen (B230055A)',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontFamily: 'Dongle',
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                color: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Chong Kai Jun  (B230029A)',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontFamily: 'Dongle',
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
