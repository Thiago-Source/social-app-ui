import 'package:flutter/material.dart';
import 'package:social_media/models/post_model.dart';

class PostsCarousel extends StatelessWidget {
  final PageController pageController;
  final String title;
  final List<Post> posts;

  const PostsCarousel(
      {required this.pageController, required this.posts, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
