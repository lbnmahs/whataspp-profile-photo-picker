import 'package:flutter/material.dart';

class ChoiceModal extends StatelessWidget {
  const ChoiceModal({ super.key });

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
                onPressed: () {}, 
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
                onPressed: () {}, 
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
