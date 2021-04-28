import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

part 'app_theme_state.g.dart';

@HiveType(typeId: 0)
class AppThemeState {
  @HiveField(0)
  bool isdarkMode = true;

  void toggleState() {
    isdarkMode = !isdarkMode;
  }
}
