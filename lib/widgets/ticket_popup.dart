import 'package:event_app_design_ui/widgets/utils.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

class TicketPopUp extends StatelessWidget {
  const TicketPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      width: 0.0,
      bRadius: 20,
      mColor: Pallete.blackbgColor,
      height: double.infinity / 2,
    );
  }
}
