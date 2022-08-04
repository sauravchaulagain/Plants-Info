
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:plants_info/Button/nav_button/search.dart';
import 'package:plants_info/Home/bestselling.dart';
class Sliderimage extends StatefulWidget {


  @override
  State<Sliderimage> createState() => _SliderimageState();
}

class _SliderimageState extends State<Sliderimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :Container(
        child: Center(
          child: (
          ListView(
            children: [
              SizedBox(
                height: 200.0,
                width: 30.0,
                child: Carousel(
                  images: [
                    InkWell(
                      child: Image.asset("assets/01.jpg"),
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => search()),
                        );
                      },

                    ),

                    AssetImage("assets/1.jpg",),
                    AssetImage("assets/2.jpg"),
                    AssetImage("assets/3.jpg"),
                    AssetImage("assets/4.jpg"),
                    AssetImage("assets/5.jpg"),
                  ],
                ),
              )
            ],
          )
          ),
        ),),
      );

  }
}
