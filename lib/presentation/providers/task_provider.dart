

import 'package:app_tasks/domain/entities/task.dart';
import 'package:flutter/material.dart';

// Creamos el provider para gestionar la visualizacion y gestion de tareas

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  // Funcion para agregar tarea, recibe el parametro de tipo Task

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  // Funcion para eliminar tarea, recibe el parametro del indice de la tarea en la lista

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}