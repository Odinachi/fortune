import 'package:flutter/material.dart';
import 'package:fortune/custom_widgets/bottom_drawer.dart';
import 'package:fortune/screens/chat_screen.dart';
import 'package:fortune/screens/home_Screen.dart';
import 'package:fortune/screens/payment_screen.dart';
import 'package:fortune/screens/plan_screen.dart';
import 'package:fortune/screens/reward_screen.dart';
import 'package:fortune/state_management/drawer_state_manager.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<DrawerState>(
          create: (_) => DrawerState(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget getDrawerPage(int index) {
    if (index == 1) {
      return PlanScreen();
    } else if (index == 2) {
      return RewardScreen();
    } else if (index == 3) {
      return PaymentScreen();
    } else if (index == 4) {
      return ChatScreen();
    } else {
      return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomDrawer(),
        body: getDrawerPage(Provider.of<DrawerState>(context).currentIndex),
      ),
    );
  }
}
