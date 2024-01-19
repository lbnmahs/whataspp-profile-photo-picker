import 'package:flutter/material.dart';
import 'package:profile_photo/widgets/prof_desc.dart';
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
            ProfileDescription(
              icon: Icons.person, 
              title: 'Name', 
              data: 'Anita Max Wynn'
            ),
            // a line
            Divider(
              color: Color.fromARGB(255, 57, 88, 102),
              thickness: 1,
            ),
            ProfileDescription(
              icon: Icons.email, 
              title: 'Email', 
              data: 'anitamax@gmail.com'
            ),
            Divider(
              color: Color.fromARGB(255, 57, 88, 102),
              thickness: 1,
            ),
            ProfileDescription(
              icon: Icons.phone, 
              title: 'Phone Number', 
              data: '+254769566055'
            ),
          ],
        ),
        ),
      );
  }
}
