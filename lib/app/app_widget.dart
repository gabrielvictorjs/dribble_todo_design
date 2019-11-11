import 'package:dribble_todo_design/app/shared/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:dribble_todo_design/app/pages/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CustomColors.primary,
      ),
      home: HomeModule(),
    );
  }
}
