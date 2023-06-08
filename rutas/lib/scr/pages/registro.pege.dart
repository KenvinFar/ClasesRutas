import 'package:flutter/material.dart';


class resgitro_pege extends StatefulWidget {
  const resgitro_pege({super.key});

  @override
  State<resgitro_pege> createState() => _resgitro_pegeState();
}

class _resgitro_pegeState extends State<resgitro_pege> {
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
            'Registro',
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
            decoration: InputDecoration(
              hintText: 'EMAIL',
              labelText: 'EMAIL',
              suffixIcon: Icon(Icons.alternate_email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
           SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'DNI',
              labelText: 'DNI',
              suffixIcon: Icon(Icons.alternate_email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
           SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'NAME',
              labelText: 'NAME',
              suffixIcon: Icon(Icons.alternate_email),
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
                Navigator.popAndPushNamed(context, "/Login");
                
              },
              child: Text('Login'),
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