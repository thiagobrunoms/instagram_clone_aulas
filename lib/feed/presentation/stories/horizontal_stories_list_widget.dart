import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/domain/story_entity.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/active_nickname.dart';
import 'package:instagram_aulas/feed/presentation/nicknames/inactive_nickname.dart';
import 'package:instagram_aulas/feed/presentation/stories/active_avatar.dart';
import 'package:instagram_aulas/feed/presentation/stories/inactive_avatar.dart';
import 'package:instagram_aulas/feed/presentation/stories/story_widget.dart';

class HorizontalStoriesListWidget extends StatefulWidget {
  final List<StoryEntity> storyEntityList;

  const HorizontalStoriesListWidget({Key? key, required this.storyEntityList})
      : super(key: key);

  @override
  State<HorizontalStoriesListWidget> createState() =>
      _HorizontalStoriesListWidgetState();
}

class _HorizontalStoriesListWidgetState
    extends State<HorizontalStoriesListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: widget.storyEntityList.length,
      separatorBuilder: (_, index) =>
          const Padding(padding: EdgeInsets.only(left: 7)),
      itemBuilder: (context, index) {
        StoryEntity eachStoryEntity = widget.storyEntityList[index];

        return _buildStoryWidget(eachStoryEntity);
      },
    );
  }

  StoryWidget _buildStoryWidget(StoryEntity story) {
    return StoryWidget(
      avatar: story.seen
          ? InactiveAvatar(user: story.user, radius: 35)
          : ActiveAvatar(user: story.user, radius: 38),
      nickname: story.seen
          ? InactiveNickname(size: 12, username: story.user.name)
          : ActiveNickname(size: 12, username: story.user.name),
    );
  }
}
