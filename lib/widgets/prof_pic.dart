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
          const CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 80,
          ),
          Positioned(
            bottom: 0, right: 0,
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
