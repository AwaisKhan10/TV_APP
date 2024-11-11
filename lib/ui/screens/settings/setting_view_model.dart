import 'package:tv_app/core/view_model/base_view_model.dart';

class SettingViewModel extends BaseViewModal {
  bool _isTrialEnabled = true;

  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;

  bool get isTrialEnabled => _isTrialEnabled;
  bool get isSelected1 => _isSelected1;
  bool get isSelected2 => _isSelected2;
  bool get isSelected3 => _isSelected3;

  void toggleTrial() {
    _isTrialEnabled = !_isTrialEnabled;
    if (!_isTrialEnabled) {
      // Reset all box selections when trial is disabled
      _isSelected1 = false;
      _isSelected2 = false;
      _isSelected3 = false;
    }

    notifyListeners();
  }

  void toggleBox1() {
    // _isSelected1 = true;
    _isSelected2 = false;
    _isSelected3 = false;
    _isSelected1 = !_isSelected1;
    notifyListeners();
  }

  void toggleBox2() {
    _isSelected1 = false;
    // _isSelected2 = true;
    _isSelected3 = false;
    _isSelected2 = !_isSelected2;
    notifyListeners();
  }

  void toggleBox3() {
    _isSelected1 = false;
    _isSelected2 = false;
    // _isSelected1 = true;
    _isSelected3 = !_isSelected3;
    notifyListeners();
  }
}
