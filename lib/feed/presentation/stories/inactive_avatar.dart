import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/stories/abstract_avatar.dart';

class InactiveAvatar extends AbstractAvatar {
  InactiveAvatar(String photo) : super(photo);

  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: CircleAvatar(backgroundImage: AssetImage(photo), radius: 35),
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
