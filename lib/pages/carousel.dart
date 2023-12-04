import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {

  final List<String> imgList = [
    'assets/img/banner1.jpg',
    'assets/img/banner2.jpg',
    'assets/img/banner3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: imgList.map((item) => Center(
          child: Image.asset(
            item,
            fit: BoxFit.cover,
            width: 1000,
          ),
        )).toList(),
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2,
          enableInfiniteScroll: true
        ),
      ),
    );
  }
}