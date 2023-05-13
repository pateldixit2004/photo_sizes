import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List image = [
    'assets/image/img.png',
    'assets/image/img_1.png',
    'assets/image/img_2.png',
    'assets/image/img_3.png',
    'assets/image/img_4.png',
    'assets/image/img_5.png',
    'assets/image/img_6.png',
    'assets/image/img_1.png',
    'assets/image/img_2.png',
    'assets/image/img_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: MasonryGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) {
          return ClipRRect(
            child: Image.asset("${image[index]}"),
            borderRadius: BorderRadius.circular(10),
          );
        },
        itemCount: image.length,
      )),
    );
  }
}
