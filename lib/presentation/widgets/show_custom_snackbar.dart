 import 'package:flutter/material.dart';

void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();  //Borra el snackbar anterior antes de mostrar el nuevo

    final snackbar = SnackBar(content: const Text('Tarea Eliminada'),
    action: SnackBarAction(label: 'ELIMINADO!', onPressed: (){},),
    duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
}