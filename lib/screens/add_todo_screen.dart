import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_app/widgets/widgets.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDone = false;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomFab(
                    icon: FontAwesomeIcons.arrowLeft,
                    onPressed: () {
                      Navigator.pop(context);
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    bgColor: Colors.transparent,
                    iconColor: Colors.grey,
                    splashColor: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      decoration: titleDecoration(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      autofocus: true,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextFormField(
                  decoration: descriptionDecoration(),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ),
              ),
              const TodoWidget()
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration titleDecoration() {
    return const InputDecoration(
      hintText: 'Add a task',
      border: InputBorder.none,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  InputDecoration descriptionDecoration() {
    return const InputDecoration(
      hintText: 'Add a description',
      border: InputBorder.none,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
