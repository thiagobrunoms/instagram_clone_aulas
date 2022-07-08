import 'package:instagram_aulas/feed/domain/story_entity.dart';

class LoadStoriesUsecase {
  Future<List<StoryEntity>> execute() async {
    return [
      StoryEntity(
          username: 'thiado.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          seen: true),
      StoryEntity(
          username: 'thiado.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          seen: false),
      StoryEntity(
          username: 'thiado.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          seen: false),
      StoryEntity(
          username: 'thiado.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          seen: false),
      StoryEntity(
          username: 'thiado.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          seen: false),
      StoryEntity(
          username: 'thiado.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          seen: false),
      StoryEntity(
          username: 'thiado.desales',
          profilePicture: 'assets/images/perfil-instagram.png',
          seen: false),
    ];
  }
}
