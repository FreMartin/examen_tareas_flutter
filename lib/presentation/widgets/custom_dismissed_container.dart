import 'package:flutter/material.dart';

class CustomDismissedContainer extends StatelessWidget {
  const CustomDismissedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20.0),
      child: const Icon(Icons.delete, color: Colors.white),
    );
  }
}