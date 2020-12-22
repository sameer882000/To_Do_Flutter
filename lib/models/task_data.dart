import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:To_Do_Flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Buy milk'), Task(name: 'Buy eggs')];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
