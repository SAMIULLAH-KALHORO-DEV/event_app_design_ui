import 'package:event_app_design_ui/widgets/custom_container.dart';
import 'package:event_app_design_ui/widgets/custom_list.dart';
import 'package:event_app_design_ui/widgets/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContainer(
                
                height: 50,
                width: 2,
                mColor: Pallete.blackbgColor,
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
          const Text("Today's March 24th", style: TextStyling.h3),
          const Text(
            "Welcome, Jimmay!",
            style: TextStyling.h1,
          ),
          const SizedBox(height: 10),
          CustomContainer(
            width: 0,
            bRadius: 25,
            height: 50,
            mColor: Pallete.greyColor,
            widget: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.grey,
                    labelText: "Search by Location or date",
                    labelStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Nearby Event",
            style: TextStyling.h2,
          ),
          const SizedBox(height: 10),
          CustomContainer(
            width: 0,
            height: 200,
            bRadius: 15,
            mColor: Pallete.containerColor,
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "The New Wateru \nMovement",
                          style: TextStyling.h1,
                        ),
                        CircleAvatar(
                          backgroundColor: Pallete.greyColor,
                          child: Icon(
                            Icons.save_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const Text("Today's March 24th", style: TextStyling.h3),
                    const SizedBox(height: 20),
                    const CustomContainer(
                        height: 50,
                        width: 0,
                        mColor: Pallete.blackbgColor,
                        bRadius: 25,
                        widget: Center(
                          child: Text(
                            "Get a Ticket",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cera Pro',
                                fontSize: 18),
                          ),
                        )),
                  ]),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Upcoming Event",
            style: TextStyling.h2,
          ),
          const CustomList(
            heading: 'Museum Week Fest',
            heading2: 'By Week Museum',
            imageurl: 'assets/images/mpic1.jpg',
          ),
          SizedBox(height: 10),
          const CustomList(
            heading: 'Museum Week Fest',
            heading2: 'By Week Museum',
            imageurl: 'assets/images/mpic2.jpg',
          ),
        ]),
      ),
    );
  }
}
