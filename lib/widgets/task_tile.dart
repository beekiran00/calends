import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  final bool check;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPress;

  TaskTile({this.check, this.taskTitle, this.checkBoxCallBack,this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        taskTitle,
      style: TextStyle(
        decoration: check ? TextDecoration.lineThrough: null,
      ),),
      trailing: Checkbox(
        activeColor: Colors.redAccent,
        value: check,
        onChanged: checkBoxCallBack,



      ),//TaskCheck(check, checkBoxCallBack),
    );
  }
}
