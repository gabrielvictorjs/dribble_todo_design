import 'package:flutter/material.dart';

import '../../../../shared/models/todo_category_model.dart';
import '../../../../shared/theme/colors.dart';

class CustomCardWidget extends StatelessWidget {
  final TodoCategoryModel todoCategory;

  CustomCardWidget({@required this.todoCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFEEEEEE), blurRadius: 24),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: OutlineButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          shape: CircleBorder(),
                          highlightedBorderColor: CustomColors.primary,
                          child: Icon(Icons.add, size: 14),
                        ),
                      ),
                    ),
                    _buildListItems(),
                  ],
                ),
              ),
            ],
          ),
          _buildLabel(),
        ],
      ),
    );
  }

  Widget _buildLabel() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        color: todoCategory.labelColor,
        boxShadow: [
          BoxShadow(color: Color(0xFFEEEEEE), blurRadius: 10),
        ],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        todoCategory.title.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildListItems() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
      child: Column(
        children: List.generate(
          todoCategory.todos.length,
          (index) {
            final _todo = todoCategory.todos[index];
            return InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20,
                      decoration: _activeDecoration(
                        isActive: _todo.isCompleted,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "${_todo.text}",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: CustomColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  BoxDecoration _activeDecoration({bool isActive}) {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? todoCategory.labelColor : null,
      border: Border.all(
        width: 2,
        color: isActive ? todoCategory.labelColor : CustomColors.grey,
      ),
    );
  }
}
