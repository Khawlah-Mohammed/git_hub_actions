import 'package:flutter_test/flutter_test.dart';
import 'package:git_hub_actions/features/home/home_viewmodel.dart';
import 'package:git_hub_actions/models/todo_item.dart';
import 'package:git_hub_actions/viewmodels/todo_viewmodel.dart';
import 'dart:ui';

void main() {
  test('Should show empty list if TodoViewModel is null ', () {
    // Arrange
    final homeViewModel = HomeViewModel();

    // Act
    // Do nothing

    // Assert
    expect(homeViewModel.todos.length, 0);
  });

  test('Should get all the items added to list', () {
    // Arrange
    final todoViewModel = TodoViewModel();
    final homeViewModel = HomeViewModel(
      todoViewModel: todoViewModel,
    );
    final item = TodoItem(
      id: 1,
      title: 'Title',
      description: 'Description',
      createdAt: 1,
      updatedAt: 1,
    );

    // Act
    todoViewModel.addItemToList(item);
    todoViewModel.addItemToList(item);
    todoViewModel.addItemToList(item);

    // Assert
    expect(homeViewModel.todos.length, 3);
  });
}
