import 'package:flutter/material.dart';
import 'package:social_media/models/user_model.dart';
import 'package:social_media/pages/home_page.dart';
import 'package:social_media/pages/profile_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social Media UI',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          LoginPage.route: (context) => LoginPage(),
          HomePage.route: (context) => HomePage(),
          ProfilePage.route: (context) => ProfilePage(
              user: ModalRoute.of(context)!.settings.arguments as User),
        });
  }
}
