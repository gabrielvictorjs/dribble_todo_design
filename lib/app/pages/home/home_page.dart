import 'package:dribble_todo_design/app/shared/temp/mockups.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/theme/colors.dart';
import 'widgets/custom_card/custom_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _todoCategories = TodoCategoriesMock.getTodoCategories();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: CustomColors.secondary,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: CustomColors.primary,
          child: Icon(Icons.menu),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "My Day",
                    style: TextStyle(
                      color: CustomColors.dark,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _todoCategories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          CustomCardWidget(
                            todoCategory: _todoCategories[index],
                          ),
                          SizedBox(height: 20),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
