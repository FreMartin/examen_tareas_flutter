import 'package:app_tasks/domain/entities/task.dart';
import 'package:app_tasks/presentation/providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AddTaskPage extends StatelessWidget {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Tarea'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Titulo'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Descripcion'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = _titleController.text;
                final description = _descriptionController.text;

                if (title.isNotEmpty && description.isNotEmpty) {
                  final task = Task(
                    title: title,
                    description: description,
                  );

                  Provider.of<TaskProvider>(context, listen: false).addTask(task);

                  Navigator.of(context).pop();
                }
              },
              child: const Text('Agregar Tarea'),
            ),
          ],
        ),
      ),
    );
  }
}
