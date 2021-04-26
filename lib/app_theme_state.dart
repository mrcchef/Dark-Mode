import 'package:flutter/cupertino.dart';

class AppThemeState extends ChangeNotifier {
  bool isdarkMode = false;

  void toggleState() {
    isdarkMode = !isdarkMode;
    notifyListeners();
  }
}
