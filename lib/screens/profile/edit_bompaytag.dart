import 'dart:ui';

import 'package:flutter/material.dart';

class EditBompayTagScreen extends StatelessWidget {
  const EditBompayTagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        // Add your widgets and content for editing here
      ],
    );
  }
}
