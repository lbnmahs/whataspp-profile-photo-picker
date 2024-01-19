import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({ super.key, required this.icon, required this.title, required this.data });
  final IconData icon;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
          fontSize: 12,
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        data,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
          fontWeight: FontWeight.w200,
          fontSize: 16
        ),
      ),
      trailing: Icon(
        Icons.edit,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}