import 'package:flutter/material.dart';
import 'package:kuwaiti_flutter/models/task.dart';
import 'package:kuwaiti_flutter/repositories/repository.dart';
import 'package:kuwaiti_flutter/ui/pages/add_task_page.dart';
import 'package:kuwaiti_flutter/ui/pages/all_tasks.dart';
import 'package:kuwaiti_flutter/ui/pages/completed_tasks.dart';
import 'package:kuwaiti_flutter/ui/pages/in_completed_tasks.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  changeTaskComplete(Task task) {
    setState(() {
      int taskIndex = allTasks.indexOf(task);
      allTasks[taskIndex].toggleTask();
    });
  }

  removeTask(Task task) {
    setState(() {
      int taskIndex = allTasks.indexOf(task);
      allTasks.removeAt(taskIndex);
    });
  }

  addTask(Task task) {
    // Task task = Task(taskTitle: this.taskTitle, isComplete: this.isComplete);
    setState(() {
      allTasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TODO'),
            bottom: TabBar(tabs: [
              Tab(
                text: 'AllTasks',
                icon: Icon(Icons.menu),
              ),
              Tab(
                text: 'CompletedTasks',
                icon: Icon(Icons.done),
              ),
              Tab(
                text: 'InCompletedTasks',
                icon: Icon(Icons.close),
              ),
            ]),
          ),
          body: TabBarView(children: [
            AllTasks(changeTaskComplete, removeTask),
            CompletedTasks(
                allTasks
                    .where((element) => element.isComplete == true)
                    .toList(),
                changeTaskComplete,
                removeTask),
            InCompletedTasks(
                allTasks
                    .where((element) => element.isComplete == false)
                    .toList(),
                changeTaskComplete,
                removeTask)
          ]),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (x) {
                  return AddTaskPage(addTask);
                }));
              }),
        ));
  }
}
