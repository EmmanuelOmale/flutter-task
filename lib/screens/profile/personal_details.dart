import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PersonalDetailsScreen(),
  ));
}

class PersonalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              // Handle closing the screen
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Full Name',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Email Address',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Personal Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('First name'),
                Text('Timothy'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Last name'),
                Text('Banjoko'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Phone number'),
                Text('08160971841'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Account number'),
                Row(
                  children: [
                    Text('8160971841'),
                    Icon(Icons.copy), // Add copy icon
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('BVN'),
                Text('222222*******'),
              ],
            ),
            Text(
              'BOMPAY TAG',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bompaytag'),
                Row(
                  children: [
                    Text('@koko231'),
                    Icon(Icons.edit), // Add edit icon
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle delete account action
              },
              child: Text('DELETE ACCOUNT'),
            ),
          ],
        ),
      ),
    );
  }
}
