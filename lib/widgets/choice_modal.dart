import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChoiceModal extends StatefulWidget {
  const ChoiceModal({ super.key, required this.onImageSelect });

  final void Function(File pic) onImageSelect;

  @override
  State<ChoiceModal> createState() => _ChoiceModalState();
}

class _ChoiceModalState extends State<ChoiceModal> {
  File? _selectedImage;

  void _selectImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if(image == null) return;

    if(!context.mounted) return;
    Navigator.of(context).pop();

    setState(() {
      _selectedImage = File(image.path);
    });

    widget.onImageSelect(_selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Profile Photo',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 18
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {}, 
                icon: const Icon(Icons.delete),
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton.filledTonal(
                isSelected: false,
                iconSize: 25,
                onPressed: () => _selectImage(ImageSource.camera),
                icon: Icon(
                  Icons.camera_alt, 
                  color: Theme.of(context).colorScheme.primary
                ), 
                padding: const EdgeInsets.all(5),
              ),
              const SizedBox(width: 15,),
              IconButton.filledTonal(
                isSelected: false,
                iconSize: 25,
                onPressed: () => _selectImage(ImageSource.gallery), 
                icon: Icon(
                  Icons.photo,
                  color: Theme.of(context).colorScheme.primary
                ), 
                padding: const EdgeInsets.all(5),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
