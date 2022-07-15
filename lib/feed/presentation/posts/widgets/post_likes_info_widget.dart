import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/post_entity.dart';

class PostLikesInfoWidget extends StatefulWidget {
  final PostEntity post;
  const PostLikesInfoWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostLikesInfoWidget> createState() => _PostLikesInfoWidgetState();
}

class _PostLikesInfoWidgetState extends State<PostLikesInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        '${widget.post.numberOfLikes} curtidas',
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
