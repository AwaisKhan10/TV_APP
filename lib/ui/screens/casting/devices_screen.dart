import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';
import 'package:tv_app/core/constants/colors.dart';
import 'package:tv_app/ui/screens/casting/casting_screen.dart';
import 'package:tv_app/ui/screens/casting/casting_view_model.dart';
import 'package:tv_app/ui/screens/casting/connect_tv_screen.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CastingViewModel(),
      child: Consumer<CastingViewModel>(
          builder: (context, model, child) => Scaffold(
                appBar: _appBar(),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Connected Device",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            "Make sure your device is active and connected to the same Wi-Fi network as your phone or tablet",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffF5F5F6),
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Connected Device",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        devices(
                            ontap: () {
                              model.toggleBox1();
                            },
                            image: "assets/dynamic_assets/sony.png",
                            title: "[Sonny] Mi Box",
                            connected: model.isSelected1
                                ? "assets/icons_assets/connected.png"
                                : "assets/icons_assets/not_connected.png",
                            status: model.isSelected1
                                ? "Connected"
                                : "Not Connected",
                            mark: model.isSelected1
                                ? "assets/icons_assets/mark.png"
                                : "assets/icons_assets/mark_empty.png"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Other Devices",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        devices(
                            ontap: () {
                              model.toggleBox2();
                            },
                            image: "assets/dynamic_assets/lg.png",
                            title: "[LG] webOS TV",
                            connected: model.isSelected2
                                ? "assets/icons_assets/connected.png"
                                : "assets/icons_assets/not_connected.png",
                            status: model.isSelected2
                                ? "Connected"
                                : "Not Connected",
                            mark: model.isSelected2
                                ? "assets/icons_assets/mark.png"
                                : "assets/icons_assets/mark_empty.png"),
                        SizedBox(
                          height: 10,
                        ),
                        devices(
                            ontap: () {
                              model.toggleBox3();
                            },
                            image: "assets/dynamic_assets/samsung.png",
                            title: "[Samsung] Hi Tech",
                            connected: model.isSelected3
                                ? "assets/icons_assets/connected.png"
                                : "assets/icons_assets/not_connected.png",
                            status: model.isSelected3
                                ? "Connected"
                                : "Not Connected",
                            mark: model.isSelected3
                                ? "assets/icons_assets/mark.png"
                                : "assets/icons_assets/mark_empty.png"),
                        SizedBox(
                          height: 100,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/dynamic_assets/sync.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Text(
                          "I don’t see the device",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff8969FF),
                            decoration: TextDecoration.underline,
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              )),
    );
  }

  devices(
      {String? image,
      final ontap,
      String? title,
      String? status,
      String? connected,
      String? mark}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black54)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 68,
                  width: 67,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Image.asset(
                    image!,
                    //fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          connected!,
                          scale: 1,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(status!,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: Colors.white))
                      ],
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                mark!,
                width: 24,
                height: 24,
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: Image.asset(
          "assets/icons_assets/back_arrow.png",
          scale: 3,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () => Get.to(ConnectTvScreen()),
            child: Image.asset(
              "assets/icons_assets/Scan.png",
              width: 24,
              height: 24,
            ),
          ),
        )
      ],
      title: Text(
        "Devices",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
