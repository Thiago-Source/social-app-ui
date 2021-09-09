import 'package:flutter/material.dart';
import 'package:social_media/data/data.dart';
import 'package:social_media/models/user_model.dart';
import '../text_themes.dart';

class UsuariosSeguidosWidget extends StatelessWidget {
  const UsuariosSeguidosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            'Seguindo',
            style: TextStyles.labelText2,
          ),
        ),
        Container(
          height: 80.0,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (context, index) {
              User user = users[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                    border: Border.all(
                        width: 2.0, color: Theme.of(context).primaryColor),
                  ),
                  child: ClipOval(
                    child: Image(
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                      image: AssetImage(user.profileImageUrl!),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
