import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:financce/core/featuers/auth/homepage/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  double currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index.toDouble();
              });
            },
          ),
          items: [CardItem(), CardItem(), CardItem()],
        ),
        SizedBox(height: 16.h),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndexPage,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
