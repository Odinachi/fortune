import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fortune/state_management/drawer_state_manager.dart';
import 'package:provider/provider.dart';

class BottomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int index = Provider.of<DrawerState>(context).currentIndex;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () =>
                  Provider.of<DrawerState>(context, listen: false).setIndex(0),
              child: Column(
                children: [
                  Icon(FontAwesomeIcons.home,
                      color: index == 0 ? Color(0xff203E86) : Colors.black),
                  Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 12,
                        color: index == 0 ? Color(0xff203E86) : Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () =>
                  Provider.of<DrawerState>(context, listen: false).setIndex(1),
              child: Column(
                children: [
                  Icon(Icons.calendar_today_outlined,
                      color: index == 1 ? Color(0xff203E86) : Colors.black),
                  Text(
                    'Plan',
                    style: TextStyle(
                        fontSize: 12,
                        color: index == 1 ? Color(0xff203E86) : Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () =>
                  Provider.of<DrawerState>(context, listen: false).setIndex(2),
              child: Column(
                children: [
                  Icon(FontAwesomeIcons.gift,
                      color: index == 2 ? Color(0xff203E86) : Colors.black),
                  Text(
                    'Reward',
                    style: TextStyle(
                        fontSize: 12,
                        color: index == 2 ? Color(0xff203E86) : Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () =>
                  Provider.of<DrawerState>(context, listen: false).setIndex(3),
              child: Column(
                children: [
                  Icon(FontAwesomeIcons.creditCard,
                      color: index == 3 ? Color(0xff203E86) : Colors.black),
                  Text(
                    'Payment',
                    style: TextStyle(
                        fontSize: 12,
                        color: index == 3 ? Color(0xff203E86) : Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () =>
                  Provider.of<DrawerState>(context, listen: false).setIndex(4),
              child: Column(
                children: [
                  Icon(FontAwesomeIcons.comments,
                      color: index == 4 ? Color(0xff203E86) : Colors.black),
                  Text(
                    'Chat',
                    style: TextStyle(
                        fontSize: 12,
                        color: index == 4 ? Color(0xff203E86) : Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
