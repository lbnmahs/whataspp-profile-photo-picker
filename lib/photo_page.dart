import 'package:flutter/material.dart';
import 'package:profile_photo/widgets/prof_pic.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(20),
        child: Column(
          children: [
            ProfilePicture(),
            SizedBox(height: 20),
            Text('Profile Details')
          ],
        ),
        ),
      );
  }
}
