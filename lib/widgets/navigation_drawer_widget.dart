import 'package:flutter/material.dart';
import 'package:social_media/data/data.dart';
import 'package:social_media/widgets/curve_clipper.dart';
import 'package:social_media/widgets/drawer_header_widget.dart';
import 'package:social_media/widgets/menu_item_widget.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  final String name = currentUser.name!;
  final String email = currentUser.email!;
  final String photoURL = currentUser.profileImageUrl!;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: DrawerClipper(),
      child: Container(
        width: size.width * 0.75,
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
        ),
        child: ListView(
          children: [
            DrawerHeaderWidget(
              email: email,
              name: name,
              onTap: () {},
              photoURL: photoURL,
            ),
            const SizedBox(height: 48),
            Container(
              padding: padding,
              child: Column(
                children: [
                  MenuItemWidget(icon: Icons.person_outlined, text: 'Perfil'),
                  const SizedBox(height: 16),
                  MenuItemWidget(icon: Icons.dashboard, text: 'Página inicial'),
                  const SizedBox(height: 16),
                  MenuItemWidget(
                      icon: Icons.settings_outlined, text: 'Configurações'),
                  const SizedBox(height: 16),
                  Divider(
                    color: Theme.of(context).primaryColor,
                  ),
                  MenuItemWidget(icon: Icons.logout_outlined, text: 'Sair'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
