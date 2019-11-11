import 'package:flutter/material.dart';

import 'todo_model.dart';

class TodoCategoryModel {
  Color labelColor;
  String title;
  List<TodoModel> todos;

  TodoCategoryModel({this.labelColor, this.title, this.todos});
}