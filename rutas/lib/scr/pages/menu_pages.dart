import 'package:flutter/material.dart';

class menu_page extends StatefulWidget {
  const menu_page({Key? key}) : super(key: key);

  @override
  State<menu_page> createState() => _menu_pageState();
}

class _menu_pageState extends State<menu_page> {
  String? selectedOption;

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey,
    appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Barra de navegacion',
      ),
      backgroundColor: const Color(0xff764abc),
      
    ),
      drawer: Drawer(
       child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 51, 240, 199),
            ),
            child: Text('Menu'),
            
            
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/Home');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.people,
            ),
            title: const Text('Registro'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/registro');
            },
          ),
        ],
      ),
    ),
    body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            
          ),
          
        ],
      ),
    ),
  );
  }
}