import 'package:flutter/material.dart';
import 'package:listing/Design/menu.dart';
//import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Model',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('Login Page'),
      ),

      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Title(color: Colors.blueGrey, child: Text('Login Here')),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your username',
               ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Password',
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Email',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}