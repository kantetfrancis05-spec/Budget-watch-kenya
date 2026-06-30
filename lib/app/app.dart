import 'package:flutter/material.dart';

import 'routes.dart';
import 'theme.dart';

class BudgetWatchApp extends StatelessWidget {
  const BudgetWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BudgetWatch Kenya',

      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      darkTheme: AppTheme.darkTheme,

      themeMode: ThemeMode.system,

      initialRoute: AppRoutes.splash,

      routes: AppRoutes.routes,
    );
  }
}