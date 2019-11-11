import 'package:dribble_todo_design/app/shared/models/todo_category_model.dart';
import 'package:dribble_todo_design/app/shared/models/todo_model.dart';
import 'package:dribble_todo_design/app/shared/theme/colors.dart';

class TodoCategoriesMock {
  static List<TodoCategoryModel> getTodoCategories() {
    return [
      TodoCategoryModel(
        labelColor: CustomColors.pink,
        title: "To Do",
        todos: [
          TodoModel(
            text: "Clean the room",
            isCompleted: true,
          ),
          TodoModel(
            text: "Send email to John",
            isCompleted: false,
          ),
          TodoModel(
            text: "Order new bike",
            isCompleted: false,
          ),
          TodoModel(
            text: "Create a SED account",
            isCompleted: false,
          ),
        ],
      ),
      TodoCategoryModel(
        labelColor: CustomColors.green,
        title: "Place To Go",
        todos: [
          TodoModel(
            text: "Visit Time square",
            isCompleted: true,
          ),
          TodoModel(
            text: "Dinner with Sarah",
            isCompleted: false,
          ),
        ],
      ),
      TodoCategoryModel(
        labelColor: CustomColors.orange,
        title: "People to Speak",
        todos: [
          TodoModel(
            text: "Meet John for project proposal",
            isCompleted: true,
          ),
          TodoModel(
            text: "Client presentation with eric",
            isCompleted: true,
          ),
          TodoModel(
            text: "Call Kids",
            isCompleted: false,
          ),
          TodoModel(
            text: "Call Manager",
            isCompleted: false,
          ),
        ],
      ),
    ];
  }
}