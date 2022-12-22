import 'package:Plants_Info_final/indoor/indoorplant_decoration.dart';
import 'package:Plants_Info_final/outdoor/outdoorplant_decoration.dart';
import 'package:flutter/material.dart';

import '../Home/Front_UI.dart';

class TabBarr extends StatefulWidget {
  const TabBarr({Key? key}) : super(key: key);

  @override
  State<TabBarr> createState() => _TabBarrState();
}

class _TabBarrState extends State<TabBarr> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          controller: tabController,
          isScrollable: true,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(text: 'Home'),
            Tab(
              text: 'Indoor Plants',
            ),
            Tab(
              text: 'Outdoor Plants',
            ),
          ],
        ),
        SizedBox(
          width: size.width * 5,
          height: size.height * 0.83,
          child: TabBarView(
            controller: tabController,
            children: const [
              FrontUi(),
              IndoorPlantD(),
              OutdoorPlantD(),
            ],
          ),
        )
      ],
    );
  }
}
