import 'package:flutter/material.dart';
import 'package:kuwaiti_flutter/models/task.dart';
import 'package:kuwaiti_flutter/repositories/repository.dart';
import 'package:kuwaiti_flutter/ui/widgets/task_item.dart';

class InCompletedTasks extends StatelessWidget {
  List<Task> tasks;
  Function function;
  Function deleteFunction;
  InCompletedTasks(this.tasks, this.function, this.deleteFunction);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return TaskItem(tasks[index], function, deleteFunction);
            }));
  }
}
