import 'dart:io';
import 'package:flutter/material.dart';
import 'package:profile_photo/screens/photo_screen.dart';
import 'package:profile_photo/widgets/choice_modal.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});
  @override
  State<ProfilePicture> createState() {
    return _ProfilePictureState();
  }
}

class _ProfilePictureState extends State<ProfilePicture> {
  File? _selectedImage;

  // Function to open up the bottom modal
  void _showModal () {
    showModalBottomSheet(
      context: context, 
      builder: (ctx) =>  ChoiceModal(
        selectedImage: _selectedImage,
        onImageSelect: (image) {
          setState(() {
            _selectedImage = image;
          });
        },
        onImageDelete: () {
          setState(() {
            _selectedImage = null;
          });
        },
      )
    );
  }

  void _avatarSelect() {
    if( _selectedImage == null ) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:  const Text('Profile Photo'),
            content: const Text('Please add a profile photo'),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(), 
                child: const Text('Okay')
              )
            ],
          );
        }
      );
    }else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PhotoScreen(
            profileImage: _selectedImage!
          )
        )
      );
    }

  }
  
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Stack(
        children: [
          InkWell(
            onTap: _avatarSelect,
            child: CircleAvatar(
              backgroundImage: _selectedImage == null 
                // No profile picture image
                ? const NetworkImage('https://rb.gy/wbc0ox') 
                // Profile picture image from camera or gallery
                : FileImage(_selectedImage!) as ImageProvider<Object>?,
              radius: 95,
            ),
          ),
          Positioned(
            bottom: 0, right: 0,
            child: IconButton.filled(
              onPressed: _showModal, 
              icon: const Icon(Icons.camera_alt), 
              padding: const EdgeInsets.all(5),
            ),
          )
        ],
      ),
    );
  }
}
