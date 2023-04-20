import 'package:flutter/material.dart';
import 'main.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text('About')),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UI()));
              },
              icon: Icon(Icons.arrow_back),
            ),
            backgroundColor: Colors.purple
        ),
        backgroundColor: Colors.blue[50],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpg'),
                radius: 70.0,
              ),
              Text(
                'Group 13',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Group Member',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: ListTile(
                  title: Text(
                    'Cheng Yi Xiang(B230031A)',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: ListTile(
                  title: Text(
                    'Teo Jun Chen(B230055A)',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: ListTile(
                  title: Text(
                    'Chong Kai Jun(B230029A)',
                    style: TextStyle(color: Colors.deepPurpleAccent),
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