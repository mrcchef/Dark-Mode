import 'package:flutter/material.dart';
import 'package:flutter_theming/app_theme.dart';
import 'package:flutter_theming/app_theme_state.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String appState = 'appState';
const String appThemeStateKey = 'appThemeStateKey';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AppThemeStateAdapter());
  Box box = await Hive.openBox(appState);
  box.put(appThemeStateKey, AppThemeState());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(appState).listenable(),
      builder: (context, box, child) {
        AppThemeState appThemeState = box.get(appThemeStateKey);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: appThemeState.isdarkMode
              ? AppTheme.darkTheme
              : AppTheme.lightTheme,
          home: HomePage(),
        );
      },
    );
  }
}
