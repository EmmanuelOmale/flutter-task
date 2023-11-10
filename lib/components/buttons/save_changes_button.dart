import 'package:flutter/material.dart';

class SaveChangesButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;

  const SaveChangesButton({
    Key? key,
    required this.onPressed,
    this.buttonColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
      ),
      child: const Center(
        child: Text(
          'Save Changes',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
