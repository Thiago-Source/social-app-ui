import 'package:flutter/material.dart';
import 'package:social_media/models/user_model.dart';
import 'package:social_media/text_themes.dart';
import 'package:social_media/widgets/navigation_drawer_widget.dart';
import 'package:social_media/widgets/posts_carousel.dart';
import 'package:social_media/widgets/profile_header_widget.dart';
import 'package:social_media/widgets/profile_info_widget.dart';

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
      drawer: NavigationDrawerWidget(),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 250,
            floating: true,
            collapsedHeight: 130,
            toolbarHeight: 80,
            stretch: true,
            snap: true,
            flexibleSpace: ProfileHeaderWidget(
              widget: widget,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, _) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        widget.user.name!,
                        style: TextStyles.profileText,
                      ),
                    ),
                    ProfileInfoWidget(
                      widget: widget,
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
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
