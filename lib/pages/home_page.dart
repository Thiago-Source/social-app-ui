import 'package:flutter/material.dart';
import 'package:social_media/data/data.dart';
import 'package:social_media/widgets/posts_carousel.dart';
import 'package:social_media/widgets/navigation_drawer_widget.dart';
import '../widgets/usuarios_seguidos_widget.dart';

class HomePage extends StatefulWidget {
  static const route = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        centerTitle: true,
        title: Text(
          'Social App',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 15.0),
          tabs: [
            Tab(text: 'Populares'),
            Tab(text: 'Mais recentes'),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UsuariosSeguidosWidget(),
          PostsCarousel(
              pageController: _pageController!, title: 'Posts', posts: posts),
        ],
      ),
    );
  }
}
