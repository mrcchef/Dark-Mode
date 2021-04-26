import 'package:flutter/material.dart';
import 'package:flutter_theming/app_theme.dart';
import 'package:flutter_theming/app_theme_state.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppThemeState>(
      create: (context) => AppThemeState(),
      builder: (context, _) {
        return Consumer<AppThemeState>(
          builder: (context, appThemeState, _) {
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
      },
    );
  }
}
