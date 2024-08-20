import 'package:flutter/material.dart';

Future<bool?> confirmDelete(BuildContext context) {
    return showDialog(
                  context: context, 
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    title: const Text('¿Está seguro?'),
                    content: const Text('¿Está seguro de eliminar esta tarea?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('Cancelar'),
                      ),
                      FilledButton.tonal(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('Aceptar'),
                      ),
                    ],
                  )
                );
  }

