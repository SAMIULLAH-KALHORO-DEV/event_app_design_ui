import 'package:event_app_design_ui/widgets/custom_container.dart';
import 'package:event_app_design_ui/widgets/ticket_popup.dart';
import 'package:event_app_design_ui/widgets/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(
                    height: 50,
                    width: 2,
                    mColor: Pallete.greyColor,
                    bRadius: 25,
                    widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            CupertinoIcons.arrowtriangle_left_circle_fill,
                            color: Pallete.blackbgColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Museum Fest",
                            style: TextStyle(
                                color: Pallete.blackbgColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cera Pro'),
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
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: CustomContainer(
                        width: 0.0,
                        height: 250,
                        bRadius: 10,
                        bgimage: DecorationImage(
                            image: AssetImage('assets/images/mpic.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                          height: 50,
                          width: 2,
                          mColor: Colors.white,
                          bRadius: 25,
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                CupertinoIcons.flag_fill,
                                color: Pallete.blackbgColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Toranto, Canada",
                                style: TextStyle(
                                    color: Pallete.blackbgColor,
                                    fontFamily: 'Cera Pro'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 10,
                    top: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.save_outlined,
                        color: Pallete.blackbgColor,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 5,
                    right: 140,
                    child: CustomContainer(
                      width: 4,
                      height: 30,
                      bRadius: 10,
                      mColor: Pallete.blackbgColor,
                      widget: Center(
                        child: Text('May 21',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cera Pro',
                                fontSize: 18)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Museum Week Fest', style: TextStyling.h1),
              const SizedBox(height: 0),
              const Text("by Week Museum", style: TextStyling.h2),
              const SizedBox(height: 20),
              const Text('About', style: TextStyling.h2),
              const SizedBox(height: 10),
              const Text(
                  'Museum Week Festival, the worldwide festival for culture made by galleries, libraries, archives, museums, science & music centers! During 7 days, thousands of people and artist will meetup and taking about the Week Festival',
                  style: TextStyling.h3),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Timeline Event',
                        style: TextStyling.h3.copyWith(
                            color: Pallete.blackbgColor,
                            fontWeight: FontWeight.bold)),
                    const Text('View all', style: TextStyling.h3)
                  ],
                ),
              ),
              CustomContainer(
                width: 0.0,
                bRadius: 10,
                height: 40,
                mColor: Pallete.greyColor,
                widget: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Opening Festival',
                          style: TextStyling.h2.copyWith(fontSize: 16)),
                      Text(
                        DateTime.now().toString(),
                        style: TextStyling.h3,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CustomContainer(
                width: 0.0,
                bRadius: 10,
                height: 40,
                mColor: Pallete.greyColor,
                widget: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Opening Festival',
                          style: TextStyling.h2.copyWith(fontSize: 16)),
                      Text(
                        DateTime.now().toString(),
                        style: TextStyling.h3,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            isDismissible: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return const TicketPopUp();
            },
          );
        },
        child: const CustomContainer(
          height: 60,
          width: 1.1,
          bRadius: 30,
          mColor: Pallete.blackbgColor,
          widget: Center(
            child: Text('Get a Ticket',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Cera Pro', fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
