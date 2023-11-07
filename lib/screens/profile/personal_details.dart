import 'dart:ui';
import 'package:flutter/material.dart';

class ProfileDetailsScreen {
  static Future displayButomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
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
                    height: 760, // Maintain the initial height
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Center(
                          child: Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Personal Details',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Text('Full Name'),
                        Container(
                          width: 366,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              //SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('First name'),
                                  Text('Timothy'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Last name'),
                                  Text('Banjoko'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Phone number'),
                                  Text('08160971841'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Account number'),
                                  Row(
                                    children: [
                                      Text('8160971841'),
                                      Icon(Icons.copy),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('BVN'),
                                  Text('222222*******'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'BOMPAY TAG',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bompaytag'),
                            Row(
                              children: [
                                Text('@koko231'),
                                Icon(Icons.edit),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Handle delete account action
                          },
                          child: Text('DELETE ACCOUNT'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
