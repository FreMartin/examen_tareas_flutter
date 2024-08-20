import 'package:app_tasks/config/app_router.dart';
import 'package:app_tasks/presentation/pages/task_page.dart';
import 'package:app_tasks/presentation/providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
  
    ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Gestor de Tareas',
    );
  }
}

