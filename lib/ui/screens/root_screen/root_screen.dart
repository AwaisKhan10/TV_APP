import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tv_app/custom_widgets/bottom_navigation/custom_bottom_navigator.dart';

import 'package:tv_app/ui/screens/root_screen/root_view_model.dart';

// ignore: must_be_immutable
class RootScreen extends StatelessWidget {
  int? selectedScreen;
  RootScreen({this.selectedScreen});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RootViewModel(selectedScreen = 0),
        child: Consumer<RootViewModel>(
            builder: (context, model, child) => Scaffold(

                ///
                /// Start Body
                ///
                body: model.allScreen[model.selectedScreen],
                bottomNavigationBar: BottomAppBar(
                  color: Color(0xff161C2C),
                  child: SizedBox(
                    height: 88,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomBottomNavigator(
                            title: "Remote",
                            iconfilled: "assets/icons_assets/remote_filled.png",
                            iconunfilled:
                                "assets/icons_assets/remote_unfilled.png",
                            onTap: () {
                              model.UpdatedScreen(0);
                            },
                            currentIndex: model.selectedIndex,
                            indexNumber: 0,
                          ),
                          CustomBottomNavigator(
                            title: "Apps",
                            iconfilled: "assets/icons_assets/apps_unfilled.png",
                            iconunfilled:
                                "assets/icons_assets/apps_unfilled.png",
                            onTap: () {
                              model.UpdatedScreen(1);
                            },
                            currentIndex: model.selectedIndex,
                            indexNumber: 1,
                          ),
                          CustomBottomNavigator(
                            title: "Casting",
                            iconfilled:
                                "assets/icons_assets/casting_filled.png",
                            iconunfilled: "assets/icons_assets/Casting.png",
                            onTap: () {
                              model.UpdatedScreen(2);
                            },
                            currentIndex: model.selectedIndex,
                            indexNumber: 2,
                          ),
                          CustomBottomNavigator(
                            title: "Settings",
                            iconfilled:
                                "assets/icons_assets/setting_filled.png",
                            iconunfilled:
                                'assets/icons_assets/settings_unfilled.png',
                            onTap: () {
                              model.UpdatedScreen(3);
                            },
                            currentIndex: model.selectedIndex,
                            indexNumber: 3,
                          )
                        ],
                      ),
                    ),
                  ),
                ))));
  }
}
