import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  const SliderImage({super.key});

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  final List<String> imageList = [
    ("assets/lo.jpg"),
    ("assets/indoorplant.jpg"),
    ("assets/outdoorplant.jpg"),
    ("assets/02.jpg"),
    ("assets/contact.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      width: size.width * 1,
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlayInterval: const Duration(seconds: 2),
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true),
        items: imageList
            .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        e,
                        width: 1000,
                        height: 300,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
