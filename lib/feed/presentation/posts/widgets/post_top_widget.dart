import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/post_entity.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/active_nickname.dart';
import 'package:instagram_aulas/feed/presentation/stories/active_avatar.dart';
import 'package:instagram_aulas/feed/presentation/stories/inactive_avatar.dart';

class PostTopWidget extends StatefulWidget {
  final PostEntity post;
  const PostTopWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostTopWidget> createState() => _PostTopWidgetState();
}

class _PostTopWidgetState extends State<PostTopWidget> {
  @override
  Widget build(BuildContext context) {
    double radius = MediaQuery.of(context).size.width * 0.04;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              widget.post.user.hasActiveStories
                  ? ActiveAvatar(user: widget.post.user, radius: radius)
                      .create()
                  : InactiveAvatar(user: widget.post.user, radius: radius)
                      .create(),
              SizedBox(
                width: 10,
              ),
              ActiveNickname(size: 12, username: widget.post.user.name).create()
            ],
          ),
        ),
        Container(
          width: 40,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
