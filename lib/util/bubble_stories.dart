import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({super.key, required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
