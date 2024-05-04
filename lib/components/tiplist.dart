import 'package:flutter/material.dart';

class TipListItem extends StatelessWidget {
  final String text;

  const TipListItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_outline,
          color: Colors.green,
          size: 25,
        ),
        const SizedBox(width: 5.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
