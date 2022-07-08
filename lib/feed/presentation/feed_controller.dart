import 'package:instagram_aulas/feed/domain/load_stories_usecase.dart';
import 'package:instagram_aulas/feed/domain/story_entity.dart';

class FeedController {
  LoadStoriesUsecase usecase;

  FeedController({required this.usecase});

  Future<List<StoryEntity>> loadStories() async {
    return await usecase.execute();
  }
}
