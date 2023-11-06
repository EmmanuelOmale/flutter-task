import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final VoidCallback onTap;

  Setting({
    required this.leadingIcon,
    required this.title,
    required this.onTap,
  });

  Color color = const Color.fromARGB(255, 237, 70, 41);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Icon(leadingIcon),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Container(
                  width: 50,
                  child: Icon(Icons.chevron_right),
                ),
              ],
            ),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
