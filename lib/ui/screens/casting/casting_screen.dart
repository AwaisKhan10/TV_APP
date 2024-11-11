import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tv_app/custom_widgets/box_decoration/custom_box_decoration.dart';
import 'package:tv_app/ui/screens/casting/devices_screen.dart';

class CastingScreen extends StatelessWidget {
  const CastingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            casting(
                ontap: () => Get.to(DevicesScreen()),
                title: "Cast Photo",
                image: "assets/static_assets/cast_photo.png"),
            SizedBox(
              height: 20,
            ),
            casting(
                title: "Cast Video",
                image: "assets/static_assets/cast_video.png")
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            "assets/icons_assets/Display.png",
            width: 24,
            height: 24,
          ),
        )
      ],
      title: Text(
        "Casting",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }

  casting({String? image, String? title, final ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: CustomBoxDecoration(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Cast your photos to TV",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                  color: Color(0xffF5F5F6),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/icons_assets/back_button.png",
                height: 26,
                width: 26,
              )
            ],
          ),
          Image.asset(
            image!,
            height: 64,
            width: 64,
          )
        ],
      )),
    );
  }
}
