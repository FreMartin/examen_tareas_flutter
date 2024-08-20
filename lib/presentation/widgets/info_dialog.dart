import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: const Text('Tarea Agregada'),
          content: const Text('La tarea fue agregada exitosamente, RECUERDA!! Selecciona la tarea para cambiarla a realizada y deslizala hacia la derecha para eliminarla'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo
              },
              child: const Text('OK'),
            ),
          ],
        );
  }
}