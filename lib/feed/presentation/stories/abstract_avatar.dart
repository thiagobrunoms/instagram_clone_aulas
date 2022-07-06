import 'package:flutter/material.dart';

abstract class AbstractAvatar {
  Widget create() {
    return Container(
      decoration: buildBorder(),
      child: build(),
    );
  }

  Widget build();

  BoxDecoration buildBorder();
}
