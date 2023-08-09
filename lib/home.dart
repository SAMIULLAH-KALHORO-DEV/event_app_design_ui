import 'package:event_app_design_ui/widgets/custom_container.dart';
import 'package:event_app_design_ui/widgets/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContainer(
                height: 50,
                width: 2,
                mColor: Colors.black87,
                bRadius: 25,
                widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        CupertinoIcons.flag_fill,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Toranto, Canada",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Cera Pro'),
                      )
                    ]),
              ),
              const CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              )
            ],
          ),
          const SizedBox(height: 20),
          Text("Today's March 24th", style: TextStyling().h3),
          Text(
            "Welcome, Jimmay!",
            style: TextStyling().h1,
          )
        ]),
      ),
    );
  }
}
