import 'dart:collection';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile/screens/profile/list.dart';
import 'package:profile/screens/profile/profile.dart';
import 'package:profile/utils/utils.dart';
import 'package:profile/screens/profile/personal_details.dart';

class MyHomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Map<String, List<String>>> array = [
    {
      "title": ["Profile", "verified_user", "verified_user"]
    },
    {
      "title": ["Settings", "settings", "settings"]
    },
    {
      "title": ["Profile", "verified_user", "verified_user"]
    },
  ];
  List<Map<String, List<String>>> array2 = [
    {
      "title": ["Profile", "verified_user", "verified_user"]
    },
    {
      "title": ["Settings", "settings", "settings"]
    },
    {
      "title": ["Profile", "verified_user", "verified_user"]
    },
    {
      "title": ["Settings", "settings", "settings"]
    },
    {
      "title": ["Settings", "settings", "settings"]
    },
    {
      "title": ["Profile", "settings", "verified_user"]
    },
  ];

  Icon getIcon(String iconName) {
    switch (iconName) {
      case "verified_user":
        return Icon(Icons.verified_user);
      case "settings":
        return Icon(Icons.settings);

      default:
        return Icon(Icons.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 270,
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 150,
                    child: Column(
                      children: [
                        Utils.sizedBoxheight(30),
                        Container(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              "Hello!",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )),
                        Utils.sizedBoxheight(10),
                        Container(
                          child: const Row(children: [
                            Text(
                              "Banjoko Timothy 👋",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                            ),
                            Text(
                              "444",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ]),
                        ),
                        Utils.sizedBoxheight(10),
                        Container(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              "Assume control of your account and make edits here.!",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 79,
              height: 100,
              padding: EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle, // Make the container circular
                  border: Border.all(
                      width: 2, color: Colors.blue), // Optional border styling
                  // image: DecorationImage(
                  //   image: AssetImage('assets/your_image.png'), // Replace with the image path
                  //   fit: BoxFit.cover, // Adjust the fit based on your needs
                  // ),
                ),
              ),
            )
          ],
        ),
        backgroundColor: Color.fromRGBO(10, 23, 34, 1),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 20),
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
                child: Column(
              children: [
                Setting(
                    leadingIcon: Icons.dashboard,
                    title: "Profile",
                    onTap: () {
                      _showProfileDialog(context);
                      // Handle the tap event
                    }),
                Setting(
                    leadingIcon: Icons.dashboard,
                    title: "Notification",
                    onTap: () {
                      // Handle the tap event
                    }),
                Setting(
                    leadingIcon: Icons.dashboard,
                    title: "Account Verification", // Provide the title
                    onTap: () {
                      // Handle the tap event
                    })
              ],
            )),
            Container(
              width: MediaQuery.of(context).size.width,
              child: const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 20),
                  child: Text(
                    "Security",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
                child: Column(
              children: [
                Setting(
                    leadingIcon: Icons.dashboard,
                    title: "Change Password",
                    onTap: () {
                      // Handle the tap event
                    }),
                Setting(
                    leadingIcon: Icons.dashboard,
                    title: "Account Level", // Provide the title
                    onTap: () {
                      // Handle the tap event
                    }),
                Setting(
                    leadingIcon: Icons.dashboard,
                    title: "Two Factor Authentication",
                    onTap: () {
                      // Handle the tap event
                    }),
                Setting(
                    leadingIcon: Icons.label_off,
                    title: "Device & Sessions",
                    onTap: () {
                      // Handle the tap event
                    }),
                Setting(
                    leadingIcon: Icons.label_off,
                    title: "Change Pin",
                    onTap: () {
                      // Handle the tap event
                    }),
              ],
            ))
          ]),
        ),
      ),
    );
  }

  void _showProfileDialog(BuildContext context) {
    PersonalDetailsScreen.show(context);
  }
}
