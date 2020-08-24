import 'package:flutter/material.dart';
import 'package:kuwaiti_flutter/repositories/repository.dart';
import 'package:kuwaiti_flutter/ui/widgets/task_item.dart';

class AllTasks extends StatelessWidget {
  Function function;
  Function delteFunction;
  AllTasks(this.function, this.delteFunction);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView.builder(
            itemCount: allTasks.length,
            itemBuilder: (context, index) {
              return TaskItem(allTasks[index], function, delteFunction);
            }));
  }
}
