import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tv_app/core/constants/app_assets.dart';
import 'package:tv_app/core/constants/colors.dart';
import 'package:tv_app/core/constants/text_style.dart';
import 'package:tv_app/ui/screens/remote/remote_view_model.dart';

class RemoteScreen extends StatelessWidget {
  const RemoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RemoteViewModel(),
      child: Consumer<RemoteViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// START BODY
          ///

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AppAssets.Microphone,
                        width: 13.33.h,
                        height: 16.67.w,
                      ),
                      Image.asset(
                        AppAssets.connectedTv,
                        scale: 4,
                      ),
                      Text(""),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  ///
                  /// Power off button and keyboard okay button
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///
                      /// power_off
                      ///
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: buttonColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: boxColor.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 1,
                                  offset: Offset(0, 1))
                            ]),
                        child: Image.asset(
                          AppAssets.power_off,
                          width: 35.h,
                          height: 35.w,
                        ),
                      ),

                      ///
                      /// Center Buttons
                      ///
                      Container(
                        width: 135.w,
                        height: 44.h,
                        decoration: BoxDecoration(
                            // gradient: linearGradientOK,
                            color: boxColor,
                            borderRadius: BorderRadius.circular(50.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff343E6B).withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 1,
                                  offset: Offset(0, 1))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              AppAssets.remote,
                              scale: 4,
                              color: Colors.grey,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: primarColor,
                              child: Image.asset(
                                AppAssets.keypad,
                                scale: 4,
                              ),
                            ),
                            Image.asset(
                              AppAssets.mdi_trackpad,
                              scale: 4,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),

                      ///
                      /// Keybored
                      ///
                      _containerShapeCircle(imagePath: AppAssets.Keyboard),
                    ],
                  ),

                  SizedBox(
                    height: 20.h,
                  ),

                  ///
                  /// ARROR HOME AND MENU
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _container(imagePath: AppAssets.Left_arrow),
                      _container(imagePath: AppAssets.menu),
                      _container(imagePath: AppAssets.home),
                    ],
                  ),

                  ///
                  /// KeyBored
                  ///
                  _keyboard(model),

                  ///
                  /// Next button Previous button
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _container(imagePath: AppAssets.previous),
                      _container(imagePath: AppAssets.forward),
                      _container(imagePath: AppAssets.next),
                    ],
                  ),

                  ///
                  /// Next button Previous button
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _container(imagePath: AppAssets.rotate_Right),
                      _container(imagePath: AppAssets.volume_Low),
                      _container(imagePath: AppAssets.volume_Slash),
                      _container(imagePath: AppAssets.volume_Cross),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),

          ///
          /// END BODY
          ///
        ),
      ),
    );
  }
}

_container({required String? imagePath}) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(10),
      height: 52.h,
      width: 102.w,
      decoration: decoration,
      child: Image.asset(
        "$imagePath",
        scale: 3,
      ),
    ),
  );
}

_containerShapeCircle({required String? imagePath}) {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
    decoration:
        BoxDecoration(color: boxColor, shape: BoxShape.circle, boxShadow: [
      BoxShadow(
          color: Color(0xff5959594D).withOpacity(0.3),
          spreadRadius: 0,
          blurRadius: 2,
          offset: Offset(0, 1)),
      BoxShadow(
          color: Color(0xff343E6B).withOpacity(0.2),
          spreadRadius: 0,
          blurRadius: 1,
          offset: Offset(0, 3)),
    ]),
    child: Image.asset(
      "$imagePath",
      scale: 3,
    ),
  );
}

_keyboard(model) {
  return Container(
    margin: EdgeInsets.only(top: 40, bottom: 20),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: boxColor,
      borderRadius: BorderRadius.circular(20.0),
    ),
    width: double.infinity,
    height: 460,
    child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: model.keys.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0.5,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final key = model.keys[index];
        return GestureDetector(
          onTap: key.isNotEmpty
              ? () {
                  print("Button $key clicked");
                }
              : null,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    key,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
        );
      },
    ),
  );
}
