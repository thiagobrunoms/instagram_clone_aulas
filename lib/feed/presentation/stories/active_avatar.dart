import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/stories/abstract_avatar.dart';

class ActiveAvatar extends AbstractAvatar {
  ActiveAvatar(String photo) : super(photo);

  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 38,
        child: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(photo),
        ),
      ),
    );
  }

  @override
  BoxDecoration buildBorder() {
    return BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.red,
          Colors.yellow[200]!,
          Colors.purple,
          Colors.red,
        ],
      ),
    );
  }
}
