import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/load_stories_usecase.dart';
import 'package:instagram_aulas/feed/domain/post_entity.dart';
import 'package:instagram_aulas/feed/domain/story_entity.dart';
import 'package:instagram_aulas/feed/domain/user_entity.dart';
import 'package:instagram_aulas/feed/presentation/appbar/app_bar_widget.dart';
import 'package:instagram_aulas/feed/presentation/feed_controller.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/active_nickname.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/inactive_nickname.dart';
import 'package:instagram_aulas/feed/presentation/posts/post_widget.dart';
import 'package:instagram_aulas/feed/presentation/stories/active_avatar.dart';
import 'package:instagram_aulas/feed/presentation/stories/horizontal_stories_list_widget.dart';
import 'package:instagram_aulas/feed/presentation/stories/inactive_avatar.dart';
import 'package:instagram_aulas/feed/presentation/stories/story_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late FeedController controller;

  @override
  void initState() {
    super.initState();

    LoadStoriesUsecase usecase = LoadStoriesUsecase();
    controller = FeedController(usecase: usecase);
  }

  @override
  Widget build(BuildContext context) {
    PostEntity post = PostEntity(
      description: "Postando essa foto no feed!",
      postContent: 'assets/images/post-test.png',
      user: UserEntity(
          name: 'thiago.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          hasActiveStories: true),
    );

    return Scaffold(
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: FutureBuilder<List<StoryEntity>>(
                future: controller.loadStories(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }

                  List<StoryEntity> storyEntityList = snapshot.data!;

                  return HorizontalStoriesListWidget(
                    storyEntityList: storyEntityList,
                  );
                },
              ),
            ),
            PostWidget(post: post),
            PostWidget(post: post),
          ],
        ),
      ),
    );
  }
}
