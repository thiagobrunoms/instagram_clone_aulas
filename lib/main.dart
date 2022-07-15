import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/comments/post_comments_page.dart';
import 'package:instagram_aulas/feed/presentation/feed_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        backgroundColor: Colors.black,
      ),
      home: const FeedPage(),
      routes: {
        '/toPostComments': (context) => const PostCommentsPage(),
      },
    );
  }
}
