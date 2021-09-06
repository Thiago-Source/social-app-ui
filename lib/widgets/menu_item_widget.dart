import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  Widget? trailing;

  MenuItemWidget({required this.icon, required this.text, this.trailing});

  static const color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    final hoverColor = Theme.of(context).primaryColor.withAlpha(85);
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      focusColor: hoverColor,
      onTap: () {},
    );
  }
}
