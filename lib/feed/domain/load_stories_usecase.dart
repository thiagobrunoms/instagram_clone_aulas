import 'package:instagram_aulas/feed/domain/story_entity.dart';
import 'package:instagram_aulas/feed/domain/user_entity.dart';

class LoadStoriesUsecase {
  Future<List<StoryEntity>> execute() async {
    UserEntity user = UserEntity(
        name: 'thiado.desales',
        profilePicture: 'assets/images/perfil-instagram.png');
    return [
      StoryEntity(
        user: user,
        seen: true,
      ),
      StoryEntity(
        user: user,
        seen: false,
      ),
      StoryEntity(
        user: user,
        seen: false,
      ),
      StoryEntity(
        user: user,
        seen: false,
      ),
      StoryEntity(
        user: user,
        seen: false,
      ),
      StoryEntity(
        user: user,
        seen: false,
      ),
      StoryEntity(
        user: user,
        seen: false,
      ),
    ];
  }
}
