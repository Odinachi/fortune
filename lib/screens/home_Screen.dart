import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fortune/custom_widgets/big_home_card.dart';
import 'package:fortune/custom_widgets/custom_button.dart';
import 'package:fortune/custom_widgets/home_divider.dart';
import 'package:fortune/custom_widgets/small_home_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                    ),
                    Text(
                      'Welcome Back,',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Flutter Dev',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.sync,
                          size: 12,
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        CustomButton(
                          buttonName: 'ADD MONEY',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeScreenLargeCard(
                      amount: 'N200,000',
                      color: Color(0xff203E86),
                      icon: FontAwesomeIcons.shieldAlt,
                      title: 'Total savings',
                    ),
                    HomeScreenLargeCard(
                      amount: 'N200,000',
                      color: Color(0xff00D3FF),
                      icon: FontAwesomeIcons.chartLine,
                      title: 'Total Investment',
                    ),
                    HomeScreenLargeCard(
                      amount: 'N200,000',
                      color: Color(0xff222C37),
                      icon: FontAwesomeIcons.dollarSign,
                      title: 'Total Loan Obtained',
                    ),
                    HomeScreenDivider(
                      text: 'Save & Invest',
                    ),
                    Row(
                      children: [
                        HomeScreenSmallCard(
                          icon: FontAwesomeIcons.dollarSign,
                          itemName: 'My Savings plan',
                        ),
                        HomeScreenSmallCard(
                          icon: FontAwesomeIcons.bell,
                          itemName: 'Emergency Funds',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        HomeScreenSmallCard(
                          icon: FontAwesomeIcons.handHolding,
                          itemName: 'Mutual Funds',
                        ),
                        HomeScreenSmallCard(
                          icon: FontAwesomeIcons.moneyBill,
                          itemName: 'Acquire loan',
                        ),
                      ],
                    ),
                    HomeScreenDivider(text: 'Refer'),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff203E86),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Icon(
                                  FontAwesomeIcons.gift,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6.0),
                                child: Text(
                                  'Get Free N250',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Text(
                                'Refer and get paid for every friend you refer,signs up and saves using fortune.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    HomeScreenDivider(text: 'To-Do List'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 5),
                    color: Colors.blueGrey.shade900.withOpacity(0.2),
                  )
                ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
