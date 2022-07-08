import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/abstract_nickname.dart';
import 'package:instagram_aulas/feed/presentation/stories/abstract_avatar.dart';

class StoryWidget extends StatefulWidget {
  final AbstractAvatar avatar;
  final AbstractNickname nickname;

  const StoryWidget({Key? key, required this.avatar, required this.nickname})
      : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.avatar.create(),
        widget.nickname.create(),
      ],
    );
  }
}
