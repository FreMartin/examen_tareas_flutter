import 'package:app_tasks/presentation/widgets/info_dialog.dart';
import 'package:flutter/material.dart';

void showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Evita que el diálogo se cierre al hacer clic fuera de él
      builder: (BuildContext context) {
        return const InfoDialog(); // Usa el widget InfoDialog
      },
    );
  }
