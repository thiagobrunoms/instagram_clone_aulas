import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/abstract_nickname.dart';

class ActiveNickname extends AbstractNickname {
  ActiveNickname({required double size, required String username})
      : super(size: size, username: username);

  @override
  TextStyle buildTextStyle() {
    return TextStyle(
        color: Colors.white, fontSize: size, fontWeight: FontWeight.bold);
  }
}
