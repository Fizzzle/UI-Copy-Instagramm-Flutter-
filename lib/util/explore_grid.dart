import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container();
        });
  }
}
