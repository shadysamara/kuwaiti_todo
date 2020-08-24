import 'package:flutter/material.dart';
import 'package:kuwaiti_flutter/models/task.dart';
import 'package:kuwaiti_flutter/repositories/repository.dart';
import 'package:kuwaiti_flutter/ui/widgets/task_item.dart';

class CompletedTasks extends StatelessWidget {
  List<Task> list;
  Function function;
  Function deleteFunction;
  CompletedTasks(this.list, this.function, this.deleteFunction);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return TaskItem(list[index], function, deleteFunction);
            }));
  }
}
