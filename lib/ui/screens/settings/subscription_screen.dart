import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:provider/provider.dart';
import 'package:tv_app/ui/screens/settings/setting_view_model.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingViewModel(),
        child: Consumer<SettingViewModel>(
            builder: (context, model, child) => Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    leading: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          "assets/icons_assets/cross.png",
                          scale: 4,
                        )),
                    centerTitle: true,
                    title: Text(
                      "Subscription",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Image.asset(
                              "assets/icons_assets/logo.png",
                              width: 98,
                              height: 98,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Get Premium Access",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Start using all features of TV Remote with no limits",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffAFAFCC)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            title: Text(
                              "Trail Enabled",
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Switch(
                              value: model.isTrialEnabled,
                              onChanged: (bool value) {
                                model.toggleTrial();
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          weekly(model),
                          SizedBox(
                            height: 20,
                          ),
                          monthly(model),
                          SizedBox(
                            height: 20,
                          ),
                          yearly(model),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff6447CE),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Swipe To Continue",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Restore",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Privacy",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Terms",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )));
  }

  Container yearly(SettingViewModel model) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: model.isSelected3 ? Colors.white : Color(0xff8B8B8B))),
      child: ListTile(
        onTap: () {
          if (model.isTrialEnabled != true) {
            return null;
          } else {
            model.toggleBox3();
          }
        },
        leading: Image.asset(
          model.isSelected3
              ? "assets/icons_assets/tick.png"
              : "assets/icons_assets/empty_circle.png",
          width: 24,
          height: 24,
        ),
        title: Text(
          "Yearly: \$2.99/week",
          style: TextStyle(
            color: model.isSelected3 ? Colors.white : Color(0xff8B8B8B),
          ),
        ),
        trailing: Text("Total \n\$35.38.99",
            style: TextStyle(
                color: model.isSelected3 ? Colors.white : Color(0xff8B8B8B))),
      ),
    );
  }

  Container monthly(SettingViewModel model) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: model.isSelected2 ? Colors.white : Color(0xff8B8B8B))),
      child: ListTile(
        onTap: () {
          if (model.isTrialEnabled != true) {
            return null;
          } else {
            model.toggleBox2();
          }
        },
        leading: Image.asset(
          model.isSelected2
              ? "assets/icons_assets/tick.png"
              : "assets/icons_assets/empty_circle.png",
          width: 24,
          height: 24,
        ),
        title: Text(
          "Monthly: \$3.45/week",
          style: TextStyle(
            color: model.isSelected2 ? Colors.white : Color(0xff8B8B8B),
          ),
        ),
        trailing: Text("Total \n\$4.99",
            style: TextStyle(
                color: model.isSelected2 ? Colors.white : Color(0xff8B8B8B))),
      ),
    );
  }

  Container weekly(SettingViewModel model) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: model.isSelected1 ? Colors.white : Color(0xff8B8B8B))),
      child: ListTile(
        onTap: () {
          if (model.isTrialEnabled != true) {
            return null;
          } else {
            model.toggleBox1();
          }
        },
        leading: Image.asset(
          model.isSelected1
              ? "assets/icons_assets/tick.png"
              : "assets/icons_assets/empty_circle.png",
          width: 24,
          height: 24,
        ),
        title: Text(
          "7-day trail: \$4.99/week",
          style: TextStyle(
            color: model.isSelected1 ? Colors.white : Color(0xff8B8B8B),
          ),
        ),
        trailing: Text("Total \n\$4.99",
            style: TextStyle(
                color: model.isSelected1 ? Colors.white : Color(0xff8B8B8B))),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Subscription Options')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Trial enabled'),
            // Consumer<SubscriptionModel>(
            //   builder: (context, subscription, child) {
            //     return Switch(
            //       value: subscription.isTrialEnabled,
            //       onChanged: (bool value) {
            //         subscription.toggleTrial();
            //       },
            //     );
            //   },
            // ),
            SizedBox(height: 20),
            Text('Choose your subscription plan:'),
            RadioListTile(
              title: Text('7-day trial: \$4.99/week'),
              value: 0,
              groupValue: 1,
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text('Monthly: \$3.45/week'),
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text('Yearly: \$2.99/week'),
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
