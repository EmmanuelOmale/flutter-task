import 'package:flutter/material.dart';

class PersonalDetailsScreen {
  static Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            width: 600,
            //padding: EdgeInsets.only(top: 50.0)
            padding: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height -
                120, // Expand to the base of the screen
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  //color: Colors.black,
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
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
      },
    );
  }
}
