import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/post_entity.dart';

class PostCommentsPage extends StatefulWidget {
  const PostCommentsPage({Key? key}) : super(key: key);

  @override
  State<PostCommentsPage> createState() => _PostCommentsPageState();
}

class _PostCommentsPageState extends State<PostCommentsPage> {
  PostEntity? post;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    post = ModalRoute.of(context)!.settings.arguments as PostEntity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 10);
          },
          icon: Icon(Icons.add),
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Comentários',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.white,
              ))
        ],
      ),
      body: Text(
        post!.description,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
