import 'package:flutter/material.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});
  @override
  State<ProfilePicture> createState() {
    return _ProfilePictureState();
  }
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            radius: 95,
          ),
          Positioned(
            bottom: 0, right: 0,
            // set the icon button background color to green
            child: IconButton.filled(
              onPressed: () {}, 
              icon: const Icon(Icons.camera_alt), 
              padding: const EdgeInsets.all(5),
            ),
          )
        ],
      ),
    );
  }
}
