import 'package:flutter/material.dart';
import 'theme.dart';
import 'routes.dart';

class BudgetWatchApp extends StatelessWidget {
  const BudgetWatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BudgetWatch Kenya',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: Center(
          child: Text('Welcome to BudgetWatch Kenya'),
        ),
      ),
      routes: AppRoutes.routes,
    );
  }
}
