import 'package:app_tasks/config/show_info_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.push('/add');
        showInfoDialog(context);
      },
      child: const Icon(Icons.add),
    );
  }
}