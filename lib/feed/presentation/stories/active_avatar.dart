import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/stories/abstract_avatar.dart';

class ActiveAvatar extends AbstractAvatar {
  @override
  Widget build() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(1.5),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 38,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/perfil-instagram.png'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Text(
            'thiago.desales',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
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
