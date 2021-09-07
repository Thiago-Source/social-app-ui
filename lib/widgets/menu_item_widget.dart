import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final Widget? trailing;

  MenuItemWidget(
      {required this.icon,
      required this.text,
      this.trailing,
      required this.onTap});

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
      onTap: onTap,
    );
  }
}
