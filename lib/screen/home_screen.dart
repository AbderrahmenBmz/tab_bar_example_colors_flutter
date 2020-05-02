import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  Widget _slidColor(Color color, String name) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          name,
          style: TextStyle(fontSize: 80),
        ),
      ),
    );
  }

  Widget _tab(String name) {
    return Tab(
      text: name,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Colors'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              _tab('Teal'),
              _tab('Blue'),
              _tab('White'),
            ],
            controller: _tabController,
          )),
      body: TabBarView(
        children: [
          _slidColor(Colors.teal, 'Teal'),
          _slidColor(Colors.blue, 'Blue'),
          _slidColor(Colors.white, 'White'),
        ],
        controller: _tabController,
      ),
    );
  }
}
