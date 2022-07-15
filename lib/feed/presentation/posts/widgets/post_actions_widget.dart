import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/post_entity.dart';

class PostActionsWidget extends StatefulWidget {
  final PostEntity post;
  const PostActionsWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostActionsWidget> createState() => PostActionsWidgetState();
}

class PostActionsWidgetState extends State<PostActionsWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _buildActionsButton(
                Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.white,
                ),
                fireLikedIt),
            _buildActionsButton(
                const Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                () {}),
            _buildActionsButton(
                const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                () {}),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.bookmark_border,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget _buildActionsButton(Icon icon, VoidCallback callback) {
    return IconButton(
      onPressed: callback,
      icon: icon,
    );
  }

  void fireLikedIt() {
    setState(() {
      //controler.likedIt(post.id)
      isLiked = !isLiked;
      print('isLiked $isLiked');
    });
  }
}
