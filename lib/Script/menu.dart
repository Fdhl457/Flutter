import 'package:flutter/material.dart';
import 'package:listing/Script/about.dart';
import 'package:listing/Script/main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        focusColor: Colors.grey,
        hoverColor: Colors.grey,
        backgroundColor: Colors.grey,
        onPressed: () {
          
        },
        child: Icon(Icons.add),
      ),

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('Home Page'),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('login/sign in'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('exit'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('about'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}