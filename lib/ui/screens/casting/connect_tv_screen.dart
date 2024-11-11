import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ConnectTvScreen extends StatelessWidget {
  const ConnectTvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Select Your Device",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Select your Smart TV from the list below, make sure your device is active and connected to the same Wi-Fi network as your phone or tablet",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0xffF5F5F6),
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/dynamic_assets/wifi.png',
                  width: 220,
                  height: 220,
                )
              ],
            )),
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                "Skip for now",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
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
    title: Text(
      "Connect Your Tv",
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
    ),
  );
}
