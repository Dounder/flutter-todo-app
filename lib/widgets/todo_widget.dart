import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String? text;

  const TodoWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text(text ?? 'No todo text'),
      ],
    );
  }
}
