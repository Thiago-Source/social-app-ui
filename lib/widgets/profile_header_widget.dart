import 'package:flutter/material.dart';
import 'package:social_media/pages/profile_page.dart';

import 'curve_clipper.dart';
class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProfilePage widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: BannerClipper(),
          child: Image(
              height: 300,
              width: double.infinity,
              image: AssetImage(widget.user.backgroundImageUrl!),
              fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: Theme.of(context).primaryColor,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 3),
                    blurRadius: 6.0),
              ],
            ),
            child: ClipOval(
              child: Image(
                height: 120,
                width: 120,
                image: AssetImage(widget.user.profileImageUrl!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
