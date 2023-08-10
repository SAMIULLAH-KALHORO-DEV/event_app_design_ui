import 'package:event_app_design_ui/widgets/utils.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

class TicketPopUp extends StatelessWidget {
  const TicketPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 0.0,
      bRadius: 20,
      mColor: Colors.white,
      // height: 800,
      widget: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Padding(
            padding: EdgeInsets.only(left: 120, right: 120),
            child: Divider(
              color: Pallete.blackbgColor,
              height: 5,
              thickness: 5,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomContainer(
              width: 0.0,
              bRadius: 20,
              mColor: Pallete.blackbgColor,
              height: MediaQuery.of(context).size.height / 1.5,
              widget: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Museum Week \nFest Ticket',
                        textAlign: TextAlign.center,
                        style: TextStyling.h1.copyWith(
                          color: Colors.white,
                        )),
                    const SizedBox(height: 10),
                    Text('Total will be active from',
                        style: TextStyling.h3.copyWith(color: Colors.grey)),
                    CustomContainer(
                      width: 0.0,
                      bRadius: 20,
                      height: 80,
                      mColor: Colors.white,
                      widget: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('09:00 PM', style: TextStyling.h2),
                                  Text('May 21, 2022', style: TextStyling.h3)
                                ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('12:00 PM', style: TextStyling.h2),
                                Text('May 22, 2022', style: TextStyling.h3)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 5,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.center,
                      child: Text("0x2324345we232342sdf",
                          style: TextStyling.h3.copyWith(color: Colors.grey)),
                    ),
                    const Image(
                      height: 80,
                      width: 250,
                      image: AssetImage('assets/images/barcode.png'),
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Text(
            'Show at Registration',
            style: TextStyling.h3,
          ),
          const CustomContainer(
            width: 0,
            height: 50,
            mColor: Pallete.containerColor,
            bRadius: 20,
            widget: Center(
              child: Text(
                "Continue",
                style: TextStyling.h2,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
