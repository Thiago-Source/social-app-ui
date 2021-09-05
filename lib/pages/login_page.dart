import 'package:flutter/material.dart';
import 'package:social_media/pages/home_page.dart';
import 'package:social_media/widgets/curve_clipper.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Image(
                  height: size.height / 2.5,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/login_background.jpg',
                  ),
                ),
              ),
              Text(
                'SOCIAL APP',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                    hintText: 'Usuário',
                    prefixIcon: Icon(Icons.account_box, size: 30.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                    hintText: 'Senha',
                    prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.0),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              GestureDetector(
                onTap: () =>
                    Navigator.pushReplacementNamed(context, HomePage.route,),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60.0),
                  alignment: Alignment.center,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.fromBorderSide(
                          BorderSide(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      height: 80.0,
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
