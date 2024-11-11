import 'package:flutter/material.dart';
import 'package:tv_app/core/view_model/base_view_model.dart';
import 'package:tv_app/ui/screens/apps/apps_screen.dart';
import 'package:tv_app/ui/screens/casting/casting_screen.dart';
import 'package:tv_app/ui/screens/remote/remote_screen.dart';
import 'package:tv_app/ui/screens/settings/settings_screen.dart';

class RootViewModel extends BaseViewModal {
  RootViewModel(val) {
    UpdatedScreen(val);
    notifyListeners();
  }

  List<Widget> allScreen = [
    RemoteScreen(),
    AppsScreen(),
    CastingScreen(),
    SettingsScreen()
  ];
  int selectedScreen = 0;
  int selectedIndex = 0;

  UpdatedScreen(int Index) {
    selectedScreen = Index;
    selectedIndex = Index;

    notifyListeners();
  }
}
