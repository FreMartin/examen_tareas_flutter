

import 'package:app_tasks/config/confirm_delete.dart';
import 'package:app_tasks/presentation/providers/task_provider.dart';
import 'package:app_tasks/presentation/widgets/custom_add_button.dart';
import 'package:app_tasks/presentation/widgets/custom_dismissed_container.dart';
import 'package:app_tasks/presentation/widgets/custom_task_item.dart';
import 'package:app_tasks/presentation/widgets/show_custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Gestor de Tareas'),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          return ListView.builder(
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              final task = taskProvider.tasks[index];
              // Se emplea Dismissible para eliminar al arrastrar a la derecha
              return Dismissible(
                key: Key(taskProvider.tasks[index].title),
                background: const CustomDismissedContainer(),
                direction: DismissDirection.startToEnd,
                confirmDismiss: (direction) {
                  // Previo a la eliminacion se muestra un dialogo que confirme la misma
                  return confirmDelete(context);
                },
                onDismissed: (direction) {
                  taskProvider.removeTask(index);
                  showCustomSnackbar(context);
                },
                child: CustomTaskItem(task: task, index: index, taskProvider: taskProvider),
              );
            },
          );
        },
      ),
      // Boton para agregar tareas
      floatingActionButton: const CustomAddButton(),
    );
  }

}






