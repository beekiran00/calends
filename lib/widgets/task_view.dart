import 'package:flutter/material.dart';
import 'package:calends/widgets/task_tile.dart';
import 'package:calends/modals/task_data.dart';
import 'package:provider/provider.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskItem.taskName,
              check: taskItem.isDone,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(taskItem);
              },
              longPress: (){
                if(taskItem.isDone !=false) {
                  taskData.deleteTask(taskItem);
                }

              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
