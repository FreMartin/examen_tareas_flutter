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
      },
      child: const Icon(Icons.add),
    );
  }
}