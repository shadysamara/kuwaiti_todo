import 'package:flutter/material.dart';
import 'package:kuwaiti_flutter/models/task.dart';
import 'package:kuwaiti_flutter/repositories/repository.dart';

class AddTaskPage extends StatefulWidget {
  Function fun;
  AddTaskPage(this.fun);
  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  String taskTitle;

  bool isComplete = false;

  addTask() {
    if (taskTitle != null) {
      Task task = Task(taskTitle: this.taskTitle, isComplete: this.isComplete);
      allTasks.add(task);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('New Task'),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  this.taskTitle = value;
                },
              ),
              CheckboxListTile(
                  title: Text(
                    'isComplete',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: isComplete,
                  onChanged: (value) {
                    setState(() {
                      this.isComplete = !this.isComplete;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Add'),
                      onPressed: () {
                        widget.fun(Task(
                            taskTitle: this.taskTitle,
                            isComplete: this.isComplete));
                      }),
                  RaisedButton(
                      child: Text('Back'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
