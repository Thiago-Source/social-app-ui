import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media UI',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),

      home: LoginPage(),
    );
  }
}