import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/user_entity.dart';
import 'package:instagram_aulas/feed/presentation/stories/abstract_avatar.dart';

class ActiveAvatar extends AbstractAvatar {
  ActiveAvatar({required UserEntity user, required double radius})
      : super(user: user, radius: radius);

  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: radius,
        child: CircleAvatar(
          radius: radius - 3,
          backgroundImage: AssetImage(user.profilePicture),
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
