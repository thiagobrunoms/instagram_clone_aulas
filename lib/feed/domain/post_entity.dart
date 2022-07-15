import 'package:instagram_aulas/feed/domain/user_entity.dart';

class PostEntity {
  UserEntity user;
  String description;
  String? postContent;
  // List<PostEntity> comments;
  // DateTime postDateTime;
  // bool isModified;
  int numberOfLikes;

  PostEntity(
      {required this.user,
      required this.description,
      required this.postContent,
      this.numberOfLikes = 0});
}
