import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/abstract_nickname.dart';

class InactiveNickname extends AbstractNickname {
  InactiveNickname({required double size, required String username})
      : super(size: size, username: username);

  @override
  TextStyle buildTextStyle() {
    return TextStyle(color: Colors.grey, fontSize: size);
  }
}
