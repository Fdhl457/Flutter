import 'package:flutter/material.dart';
import 'package:listing/Design/login.dart';
import 'package:listing/Design/menu.dart';
import 'package:flutter/services.dart';

//Root Main Function
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Model',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


//Home Page with Drawer Menu (Main Scaffold)
class MyHomePage extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => Home()),
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
                Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('exit'),
              onTap: () {
                Navigator.pop(context);
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('about'),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: Checkbox.width,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {} ,
                child: 
                  Text('Go to Details Page'),
                ),
            ElevatedButton(
                onPressed: () {} ,
                child: 
                  Text('Go to Details Page'),
                ),
            ElevatedButton(
                onPressed: () {} ,
                child: 
                  Text('Go to Details Page'),
                ),
          ]     
        ),
      ),
    );
    
  }
}

