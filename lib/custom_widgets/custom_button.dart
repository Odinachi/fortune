import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  CustomButton({required this.buttonName});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff203E86),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              buttonName,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
                size: 7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
