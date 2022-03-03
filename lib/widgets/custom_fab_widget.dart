import 'package:flutter/material.dart';
import 'package:todo_app/theme/theme.dart';

class CustomFab extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final Color? bgColor;
  final Color? iconColor;
  final Color? splashColor;
  final double? iconSize;

  const CustomFab({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.bgColor,
    this.iconColor,
    this.splashColor,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: iconSize ?? 20,
        ),
        style: ElevatedButton.styleFrom(
          primary: bgColor ?? AppTheme.primary,
          elevation: 0,
          shadowColor: Colors.transparent,
          onPrimary: splashColor ?? Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
