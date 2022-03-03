import 'package:flutter/material.dart';
import 'package:todo_app/screens/screens.dart';
import 'package:todo_app/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo app',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        '/add': (_) => const AddTodoScreen(),
      },
      theme: AppTheme.mainTheme(context),
    );
  }
}
