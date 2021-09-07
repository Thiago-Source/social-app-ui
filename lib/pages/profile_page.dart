import 'package:flutter/material.dart';
import 'package:social_media/models/user_model.dart';

import 'package:social_media/widgets/navigation_drawer_widget.dart';
import 'package:social_media/widgets/posts_carousel.dart';
import 'package:social_media/widgets/profile_header_widget.dart';

class ProfilePage extends StatefulWidget {
  static const route = 'Profile';

  final User user;

  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  PageController? _postsPageController;
  PageController? _favPostsPageController;

  @override
  void initState() {
    super.initState();
    _postsPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
    _favPostsPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderWidget(
              widget: widget,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.user.name!,
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Seguindo',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      widget.user.following!.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 60,
                  color: Colors.black12,
                ),
                Column(
                  children: [
                    Text(
                      'Seguindo',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      widget.user.followers!.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            PostsCarousel(
                pageController: _postsPageController!,
                posts: widget.user.posts!,
                title: 'Seus posts'),
            PostsCarousel(
                pageController: _favPostsPageController!,
                posts: widget.user.favorites!,
                title: 'Favoritos'),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
