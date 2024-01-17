import 'package:flutter/material.dart';

class Description {
  const Description({
    required this.icon,
    required this.title,
    required this.data
  });

  final Icon icon;
  final String title;
  final String data;
}

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({ super.key, required this.icon, required this.title, required this.data });
  final Icon icon;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      subtitle: Text(data),
    );
  }
}