import 'package:flutter/material.dart';

class DiscardChangesButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DiscardChangesButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Center(
        child: Text(
          'Discard Changes', // Change the button text
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
