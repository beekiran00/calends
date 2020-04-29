import 'package:flutter/material.dart';
import 'package:calends/widgets/task_view.dart';
import 'package:calends/screens/add_task.dart';
import 'package:provider/provider.dart';
import 'package:calends/modals/task_data.dart';


class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5786FF),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context, builder: (context) =>
              AddTaskScreen());
        },
        backgroundColor: Color(0xff5786FF),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            //padding: EdgeInsets.fromLTRB(60.0, 30.0, 30.0, 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(100,30,100,0),
                  child: Image.asset('images/kingdom-11.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Calends',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),

              child: TaskView(),
            ),
          ),
        ],
      ),
    );
  }



}


