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
        child: Column(children: [
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
                child: Column(children: [
                  Text('Museum Week \nFest Ticket',
                      textAlign: TextAlign.center,
                      style: TextStyling.h1.copyWith(
                        color: Colors.white,
                      )),
                  Text('Total will be active from',
                      style: TextStyling.h3.copyWith(color: Colors.grey)),
                  CustomContainer(
                    width: 0.0,
                    bRadius: 20,
                    height: 80,
                    mColor: Colors.white,
                    widget: Row(children:const [
                      
                    ]),
                  )
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
