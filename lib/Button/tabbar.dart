import 'package:flutter/material.dart';

import '../Home/Indoorplants.dart';
import '../Home/all.dart';
import '../Home/outdoorplant.dart';

class TabBarr extends StatefulWidget {
  const TabBarr({Key? key}) : super(key: key);

  @override
  State<TabBarr> createState() => _TabBarrState();
}

class _TabBarrState extends State<TabBarr> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        Container(
          child: TabBar(
            labelColor: Colors.black,
            controller: _tabController,
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Home'),
              Tab(
                text: 'Indoor Plants',
              ),
              Tab(
                text: 'Outdoor Plants',
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 5,
          height: size.height * 0.83,
          child: TabBarView(
            controller: _tabController,
            children: [
              All(),
              IndoorPlant(),
              outdoorplant(),
            ],
          ),
        )
      ],
    );
  }
}
