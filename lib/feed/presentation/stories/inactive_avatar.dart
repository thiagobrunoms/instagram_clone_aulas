import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/user_entity.dart';
import 'package:instagram_aulas/feed/presentation/stories/abstract_avatar.dart';

class InactiveAvatar extends AbstractAvatar {
  InactiveAvatar({required UserEntity user, required double radius})
      : super(user: user, radius: radius);

  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: CircleAvatar(
          backgroundImage: AssetImage(user.profilePicture), radius: radius),
    );
  }

  @override
  BoxDecoration buildBorder() {
    return const BoxDecoration(
      shape: BoxShape.circle,
      border: Border.fromBorderSide(
        BorderSide(
          color: Color.fromARGB(255, 77, 76, 76),
        ),
      ),
    );
  }
}
