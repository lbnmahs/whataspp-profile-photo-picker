import 'dart:io';

import 'package:flutter/material.dart';
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

  void _showModal () {
    showModalBottomSheet(
      context: context, 
      builder: (ctx) =>  ChoiceModal(
        onImageSelect: (image) {
          setState(() {
            _selectedImage = image;
          });
        },
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: _selectedImage == null 
              ? const NetworkImage('https://rb.gy/wbc0ox') 
              : FileImage(_selectedImage!) as ImageProvider<Object>?,
            radius: 95,
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
