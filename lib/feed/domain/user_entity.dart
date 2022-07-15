class UserEntity {
  String name;
  String profilePicture;
  bool hasActiveStories;

  UserEntity(
      {required this.name,
      required this.profilePicture,
      this.hasActiveStories = false});
}
