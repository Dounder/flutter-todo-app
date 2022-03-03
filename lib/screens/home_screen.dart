import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(image: AssetImage('assets/img/logo.png')),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return const TaskCard(
                          taskTitle: 'Get Started!',
                          taskDescription:
                              'Hello User! Welcome to DO_TODO app, this is a default ask that you can edit or delete to start using the app.',
                        );
                      },
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CustomFab(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () => Navigator.pushNamed(context, '/add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
