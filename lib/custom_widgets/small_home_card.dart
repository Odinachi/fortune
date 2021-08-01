import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenSmallCard extends StatelessWidget {
  final IconData icon;
  final String itemName;
  HomeScreenSmallCard({required this.icon, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 145,
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Color(0xff203E86),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        itemName,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff203E86),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 12,
                        color: Color(0xff203E86),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
