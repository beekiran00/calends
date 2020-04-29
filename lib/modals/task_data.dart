import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:calends/modals/tasks.dart';
import 'dart:collection';



class TaskData extends ChangeNotifier{



  List<Task> _tasks =[
    Task(taskName: "Press add icon to add a task"),
    Task(taskName: "Tap on check box to strike finished tasks"),
    Task(taskName: "Long press on striked tasks to delete"),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(taskName: newTaskTitle);
    _tasks.add(task);
    notifyListeners();

  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }




}