import 'package:flutter/material.dart';
import 'package:listing/Script/about.dart';
import 'package:listing/Script/login.dart';
import 'package:listing/Script/menu.dart';
import 'package:flutter/services.dart';
import 'package:listing/Script/start.dart';

//Root Main Function
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  const MyApp({super.key});
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
  const MyHomePage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        focusColor: Colors.grey,
        hoverColor: Colors.grey,
        backgroundColor: Colors.grey,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('This feature is not implemented yet.'), action: SnackBarAction(label: 'close', onPressed: (){}),),
          );
        },
        child: 
          Icon(Icons.add_comment, color: Colors.white),
          
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
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: Checkbox.width,
          children: <Widget>[
            ElevatedButton(
                /*onHover: (isHovering) {
                  ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    textStyle: TextStyle(color: Colors.white),
                  );
                },*/
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Start()),
                  );
                } ,
                child: 
                  Text('Press to Start', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 97, 96, 96)),)
                ),
          ]     
        ),
      ),
    );
    
  }
}

