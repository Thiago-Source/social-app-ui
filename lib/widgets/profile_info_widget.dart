import 'package:flutter/material.dart';
import 'package:social_media/pages/profile_page.dart';

import '../text_themes.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProfilePage widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Seguindo',
              style: TextStyles.captionText2,
            ),
            SizedBox(height: 2.0),
            Text(widget.user.following!.toString(),
                style: TextStyles.bodyText),
          ],
        ),
        Container(
          width: 1,
          height: 60,
          color: Colors.black12,
        ),
        Column(
          children: [
            Text(
              'Seguidores',
              style: TextStyles.captionText2,
            ),
            SizedBox(height: 2.0),
            Text(
              widget.user.followers!.toString(),
              style: TextStyles.bodyText,
            ),
          ],
        ),
      ],
    );
  }
}
