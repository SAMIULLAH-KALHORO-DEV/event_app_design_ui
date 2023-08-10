import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final DecorationImage? bgimage;
  final num width;
  final Color? mColor;

  final Widget? widget;
  final double bRadius;
  const CustomContainer(
    
      {super.key,
      this.height,
      this.bgimage,
      this.widget,
      required this.width,
      this.mColor,
      required this.bRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: height,
      width: MediaQuery.of(context).size.width / width,
      decoration: BoxDecoration(
          image: bgimage,
          color: mColor,
          borderRadius: BorderRadius.circular(bRadius)),
      child: widget,
    );
  }
}
