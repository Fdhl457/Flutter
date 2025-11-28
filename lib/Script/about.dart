import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  const AboutPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('About Page'),
      ),
      
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Title(color: Colors.blueGrey, child: Text('About This App')),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Text(
                'This application is developed to demonstrate a simple login and navigation system using Flutter. It includes a login page, a home page with a drawer menu, and an about page.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}