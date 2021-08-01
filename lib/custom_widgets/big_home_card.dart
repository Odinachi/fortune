import 'package:flutter/material.dart';

class HomeScreenLargeCard extends StatelessWidget {
  final String amount;
  final String title;
  final Color color;
  final IconData icon;

  HomeScreenLargeCard(
      {required this.title,
      required this.icon,
      required this.color,
      required this.amount});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Text(
                  amount,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
