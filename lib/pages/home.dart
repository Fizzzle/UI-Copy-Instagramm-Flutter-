import 'package:flutter/material.dart';
import 'package:instagramm_ui/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Как Инстраграмм', style: TextStyle(color: Colors.black)),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share)
                ],
              ),
            ],
          )),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BubbleStories(text: 'Maxim'),
                BubbleStories(text: 'Eduard'),
                BubbleStories(text: 'Liza'),
                BubbleStories(text: 'Max'),
                BubbleStories(text: 'Grinch'),
                BubbleStories(text: 'FlexRoyal'),
                BubbleStories(text: 'Vakulenko'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
