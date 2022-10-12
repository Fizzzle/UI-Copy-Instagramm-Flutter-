import 'package:flutter/material.dart';
import 'package:instagramm_ui/util/bubble_stories.dart';
import 'package:instagramm_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = [
    'Maxim',
    'Eduard',
    'Liza',
    'Elena',
    'Vakulenko',
    'Andrey',
    'Grinch',
    'Pavel',
  ];

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
          Container(
            height: 110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
