import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  final String name;
  final String email;
  final String photoURL;
  final VoidCallback onTap;

  const DrawerHeaderWidget(
      {required this.email,
      required this.name,
      required this.onTap,
      required this.photoURL});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(photoURL),
                  ),
                  SizedBox(width: 60),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Theme.of(context).accentColor,
                    child: Icon(
                      Icons.add_comment_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                email,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ));
  }
}
