import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String budget = '/budget';
  static const String projects = '/projects';
  static const String debt = '/debt';
  static const String profile = '/profile';
  static const String login = '/login';
  static const String signup = '/signup';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const Scaffold(
        body: Center(child: Text('Home Screen')),
      ),
      budget: (context) => const Scaffold(
        body: Center(child: Text('Budget Screen')),
      ),
      projects: (context) => const Scaffold(
        body: Center(child: Text('Projects Screen')),
      ),
      debt: (context) => const Scaffold(
        body: Center(child: Text('Debt Screen')),
      ),
      profile: (context) => const Scaffold(
        body: Center(child: Text('Profile Screen')),
      ),
      login: (context) => const Scaffold(
        body: Center(child: Text('Login Screen')),
      ),
      signup: (context) => const Scaffold(
        body: Center(child: Text('Signup Screen')),
      ),
    };
  }
}
