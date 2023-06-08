import 'package:flutter/material.dart';



class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
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
          Text(
            'Login',
            style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            width: 160.0,
            height: 15.0,
            child: Divider(
              color: Colors.blueGrey[600],
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'USER-NAME',
              labelText: 'USER-NAME',
              suffixIcon: Icon(Icons.verified_user),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              suffixIcon: Icon(Icons.lock_outline),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/menu");
                
              },
              child: Text('MENU'),
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
                 "/Home"
                );
              },
              child: Text('Inicio'),
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