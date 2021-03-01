import 'package:flutter/material.dart';
import 'package:food_app/home_screen.dart';
import 'package:food_app/theme.dart';
import 'package:provider/provider.dart';

import 'models/my_theme_provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Analog Checker',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark ,
          home: HomeScreen(),
        ),
      )
    );
  }
}
