import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:tv_app/custom_widgets/box_decoration/custom_box_decoration.dart';
import 'package:tv_app/ui/screens/settings/subscription_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Settings",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(SubscriptionScreen());
                },
                child: CustomBoxDecoration(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 61,
                          width: 61,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white),
                          child: Image.asset(
                            "assets/static_assets/premieum.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Premium",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Unlock all advanced features",
                              style: TextStyle(
                                  color: Color(0xffF5F5F6),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    Image.asset(
                      height: 26,
                      width: 26,
                      "assets/icons_assets/back_button.png",
                      fit: BoxFit.cover,
                    )
                  ],
                )),
              ),
              SizedBox(
                height: 10,
              ),
              CustomBoxDecoration(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Text(
                      "Premium",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/dollar.png",
                      title: "Restore Purchase"),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/question.png",
                      title: "How to Use the app"),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/share.png",
                      title: "Share the app"),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/message.png",
                      title: "Contact Us"),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/policy.png",
                      title: "Privacy Policy"),
                ],
              )),
              SizedBox(
                height: 10,
              ),
              CustomBoxDecoration(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Text(
                      "Advanced Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/firmware.png",
                      title: "Firmware Updates"),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/troubleshoot.png",
                      title: "Troubleshooting Guides"),
                  generalSettings(
                      ontap: () {},
                      leading: "assets/icons_assets/feedback.png",
                      title: "User Feedback"),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Column generalSettings({String? leading, final ontap, String? title}) {
    return Column(
      children: [
        ListTile(
          onTap: ontap,
          leading: Image.asset(
            leading!,
            fit: BoxFit.cover,
            width: 19,
            height: 19,
          ),
          trailing: Image.asset(
            "assets/icons_assets/forward_arrow.png",
            height: 20,
            width: 20,
            fit: BoxFit.cover,
          ),
          title: Text(
            title!,
            style: TextStyle(color: Color(0xffAFAFCC), fontSize: 14),
          ),
        ),
        Divider(
          thickness: 0.1,
        )
      ],
    );
  }
}
