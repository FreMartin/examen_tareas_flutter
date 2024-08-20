// Creamos la entidad Task que es el formato para cada tarea, en este formato se almacenara cada task en la lista

class Task{
  String title;
  String description;
  bool completed;

  Task({required this.title, required this.description, this.completed = false});
}