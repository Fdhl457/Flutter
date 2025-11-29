import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  const Start({super.key});
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('Start Page'),
      ),

      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Title(color: Colors.blueGrey, child: Text('Welcome to the Start Page')),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}