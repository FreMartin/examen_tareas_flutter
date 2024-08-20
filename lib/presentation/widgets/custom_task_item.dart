import 'package:app_tasks/domain/entities/task.dart';
import 'package:app_tasks/presentation/providers/task_provider.dart';
import 'package:flutter/material.dart';

class CustomTaskItem extends StatelessWidget {
  const CustomTaskItem({
    super.key,
    required this.task,
    required this.index,
    required this.taskProvider
  });

  final Task task;
  final int index;
  final TaskProvider taskProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blue,
            width: 2
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: const Offset(0, 4),
              blurRadius: 8
            )
          ]
      
        ),
        child: ListTile(
          title: Text(task.title),
          subtitle: Text(task.description),
          trailing: Icon(
            task.completed ? Icons.check_box : Icons.check_box_outline_blank,
            color: task.completed ? Colors.green : null,
          ),
          onTap: () {
            // La tarea se torna completada 
            taskProvider.tasks[index].completed = !task.completed;
            taskProvider.notifyListeners();
          },
        ),
      ),
    );
  }
}