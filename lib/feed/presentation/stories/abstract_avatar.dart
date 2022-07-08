import 'package:flutter/material.dart';

abstract class AbstractAvatar {
  String photo;

  AbstractAvatar(this.photo);

  Widget create() {
    return Container(
      decoration: buildBorder(),
      child: build(),
    );
  }

  Widget build();

  BoxDecoration buildBorder();
}
