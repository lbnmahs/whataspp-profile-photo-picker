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
  void _showModal () {
    showModalBottomSheet(
      context: context, 
      builder: (ctx) => const ChoiceModal()
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
            radius: 95,
          ),
          Positioned(
            bottom: 0, right: 0,
            // set the icon button background color to green
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
