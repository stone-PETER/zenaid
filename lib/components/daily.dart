import 'package:flutter/material.dart';

class DailyTaskWidget extends StatelessWidget {
  final String title;
  final String duration;

  const DailyTaskWidget({
    Key? key,
    required this.title,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        Text(
          duration,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
