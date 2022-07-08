import 'package:flutter/material.dart';

abstract class AbstractNickname {
  double size;
  String username;

  AbstractNickname({required this.size, required this.username});

  Widget create() {
    return Text(username, style: buildTextStyle());
  }

  TextStyle buildTextStyle();
}
