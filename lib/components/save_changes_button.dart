import 'package:flutter/material.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton({super.key, required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(buttonText),
    );
  }
}
