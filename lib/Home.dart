import 'package:flutter/material.dart';

import 'Button/sidenav.dart';
import 'Button/tabbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: SideNav()),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            'assets/Logo.png',
            height: size.height * 0.04,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: const [
            TabBarr(),
          ],
        ),
      ),

      // bottomNavigationBar: buttonNav(),
    );
  }
}
