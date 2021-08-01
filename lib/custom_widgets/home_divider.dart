import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenDivider extends StatelessWidget {
  final String text;
  HomeScreenDivider({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 100,
          ),
          Icon(
            FontAwesomeIcons.chevronDown,
            size: 12,
          )
        ],
      ),
    );
  }
}
