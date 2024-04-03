import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  final int seconds;

  const CustomSnackBar({
    required this.message,
    required this.seconds,
  });

  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: seconds),
      ),
    );

    // Return an empty container or any other widget if needed
    return Container();
  }
}
