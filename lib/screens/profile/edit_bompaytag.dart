import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:profile/components/buttons/discard_changes_button.dart';
import 'package:profile/components/buttons/save_changes_button.dart';

class EditBompayTagScreen extends StatelessWidget {
  const EditBompayTagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
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
            Container(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Container(
              height: 760,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1),
                        child: Text(
                          'Change your Bompay Tag',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Your Bompay is your unique tag for receiving money from other Grey users. ',
                          ),
                          TextSpan(
                            text:
                                'Make sure it is easy for others to remember!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bompay Tag',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 355,
                        padding: const EdgeInsets.fromLTRB(30, 10, 5, 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'e.g @ Koko231',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 170),
                      const SaveChangesButton(
                        onPressed: _handleSaveChanges,
                      ),
                      const SizedBox(height: 10),
                      const DiscardChangesButton(
                        onPressed: _handleDiscardChanges,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _handleSaveChanges() {
  // Save changes logic will be written here.
  print('Changes saved');
}

void _handleDiscardChanges() {
  print('Changes discarded');
}
