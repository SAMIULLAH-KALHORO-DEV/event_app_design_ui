import 'package:event_app_design_ui/widgets/custom_container.dart';
import 'package:event_app_design_ui/widgets/utils.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final String imageurl;
  final String heading;
  final String heading2;

  const CustomList({super.key,
 required this.imageurl,
 required this.heading,
 required this.heading2,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 0,
      bRadius: 0.0,
      widget: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child:  Image(
            height: 80,
            width: 80,
            image: AssetImage(imageurl),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 80,
          // color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(heading, style: TextStyling.h2),
               Text(heading2, style: TextStyling.h3),
              Row(
                children: [
                  const Icon(Icons.timer_sharp, color: Colors.grey),
                  Text(
                    DateTime.now().toString(),
                    style: TextStyling.h3,
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
