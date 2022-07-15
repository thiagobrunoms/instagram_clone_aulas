import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/post_entity.dart';
import 'package:instagram_aulas/feed/presentation/posts/widgets/post_actions_widget.dart';
import 'package:instagram_aulas/feed/presentation/posts/widgets/post_description_widget.dart';
import 'package:instagram_aulas/feed/presentation/posts/widgets/post_likes_info_widget.dart';
import 'package:instagram_aulas/feed/presentation/posts/widgets/post_top_widget.dart';

class PostWidget extends StatefulWidget {
  final PostEntity post;
  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    print('Building Post Widget');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostTopWidget(post: widget.post),
        Image.asset(widget.post.postContent!),
        PostActionsWidget(post: widget.post),
        PostLikesInfoWidget(post: widget.post),
        PostDescriptionWidget(post: widget.post),
        InkWell(
          onTap: () async {
            int result = await Navigator.pushNamed(context, '/toPostComments',
                arguments: widget.post) as int;
            print(result);
          },
          child: const Text(
            'Ver todos os comentários',
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}
