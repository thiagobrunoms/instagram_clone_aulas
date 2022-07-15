import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/user_entity.dart';

abstract class AbstractAvatar {
  final double radius;
  final UserEntity user;

  AbstractAvatar({required this.user, required this.radius});

  Widget create() {
    return Container(
      decoration: buildBorder(),
      child: build(),
    );
  }

  Widget build();

  BoxDecoration buildBorder();
}
