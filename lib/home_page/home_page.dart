import 'package:flutter/material.dart';
import 'package:selamat/home_page/widget_home/item_home_widget.dart';
import 'package:selamat/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillBlue4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 61),
            _component1(context),
            // Text("hi"),
            SizedBox(
              height: 18.0,
            ),
            // _component1(context)
          ],
        ),
      ),
    ));
  }
}

Widget _component1(BuildContext context) {
  return SizedBox(
    height: 250,
    width: 365,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 250.0,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              // sliderInde
            },
          ),
          itemCount: 1,
          itemBuilder: (context, index, realIndex) {
            return itemHomeWidget();
          },
        )
      ],
    ),
  );
}
