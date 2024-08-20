import 'package:app_tasks/presentation/pages/add_task_page.dart';
import 'package:app_tasks/presentation/pages/task_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => TaskPage(),
        ),
        GoRoute(
          path: '/add',
          builder: (context, state) => AddTaskPage(),
        ),
      ],
    );