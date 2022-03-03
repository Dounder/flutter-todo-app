import 'package:flutter/material.dart';
import 'package:todo_app/theme/theme.dart';

class TaskCard extends StatelessWidget {
  final String? taskTitle;
  final String? taskDescription;

  const TaskCard({
    Key? key,
    this.taskTitle,
    this.taskDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppTheme.light,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              offset: const Offset(10, 10),
              blurRadius: 10,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              taskTitle ?? 'Unnamed Task',
              style: const TextStyle(
                color: AppTheme.dark,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              taskDescription ?? 'No Description added',
              style: TextStyle(
                color: AppTheme.dark.withOpacity(.5),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
