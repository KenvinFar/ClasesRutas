import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: ListView(
        children: <Widget>[
          CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/kisaki.jpeg'),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/registro");
                
              },
              child: Text('Registro'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              
             ),
            
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(
                  context,
                 "/Login"
                );
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
             ),
            ],
          ),
        ],
      ),  
    );
  }
}