import 'package:flutter/material.dart';

class UserPosts extends StatefulWidget {
  UserPosts({super.key, required this.name});

  final String name;

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  bool likes = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void likesChange() {
    setState(() {
      likes = !likes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //! Профиль фото и имя
              Row(children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),
              //! Кнопка
              Icon(Icons.menu),
            ],
          ),
        ),
        // ! Пост сам
        Container(
          height: 300,
          color: Colors.grey[300],
        ),

        //! Кнопки к посту
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: likesChange,
                    icon: likes
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red[700],
                          )
                        : Icon(Icons.favorite_border),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, right: 14),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Лайкнул(а) '),
              Text(
                widget.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' и '),
              Text(
                'другие',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //!
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 10),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: widget.name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      ' Этот инстаграмм лучшее что я видел, даже лучше оригинала'),
            ]),
          ),
        ),
      ],
    );
  }
}
