import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const route = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
