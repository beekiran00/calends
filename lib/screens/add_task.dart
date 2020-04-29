import 'package:calends/modals/task_data.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddTaskScreen extends StatefulWidget {

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _addText = TextEditingController();

  @override
  Widget build(BuildContext context) {


    void showNullTextToast(){
      Fluttertoast.showToast(
          msg: "Add a task",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.redAccent,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Add a task",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                controller: _addText,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              onPressed: () {
                //print(newTaskTitle);

                if(_addText.text.isNotEmpty){
                  Provider.of<TaskData>(context, listen: false).addTask(_addText.text);
                  Navigator.pop(context);


                }else{
                  showNullTextToast();
                }

              },
              splashColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.redAccent,
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)),
            ),
            Image.asset('images/clip-bio-technologies.png'),
          ],
        ),
      ),
    );
  }
}
