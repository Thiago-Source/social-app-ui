import 'post_model.dart';

class User {
  final String? profileImageUrl;
  final String? backgroundImageUrl;
  final String? name;
  final String? email;
  final int? following;
  final int? followers;
  final List<Post>? posts;
  final List<Post>? favorites;

  User({
    this.profileImageUrl,
    this.backgroundImageUrl,
    this.email,
    this.name,
    this.following,
    this.followers,
    this.posts,
    this.favorites,
  });
}
