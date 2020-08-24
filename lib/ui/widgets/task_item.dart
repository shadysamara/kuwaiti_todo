import 'package:flutter/material.dart';
import 'package:kuwaiti_flutter/models/task.dart';

class TaskItem extends StatefulWidget {
  Task task;
  Function function;
  Function deleteFunction;
  TaskItem(this.task, this.function, this.deleteFunction);

  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dismissible(
      direction: DismissDirection.startToEnd,
      background: Container(
        color: Colors.red,
        child: Text('DELETE'),
      ),
      onDismissed: (direction) {
        widget.deleteFunction(widget.task);
      },
      key: UniqueKey(),
      child: ListTile(
        title: Text(this.widget.task.taskTitle),
        trailing: Checkbox(
            value: this.widget.task.isComplete,
            onChanged: (bool value) => widget.function(widget.task)),
      ),
    );
  }
}
