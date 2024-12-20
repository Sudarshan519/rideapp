import 'package:flutter/material.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';
import 'package:rideapp/ui/pages/widgets/app_button.dart';

import 'home_screen.dart';

final titleStyle = const TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 16,
);

class CancelRide extends StatelessWidget {
  const CancelRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primary,
      body: const Column(),
      bottomSheet: BottomSheetWidget(
        height: 392,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Why do you want to cancel?",
                style: titleStyle,
              ),
              20.toh,
              ...[
                "I don’t need this journey.",
                'I want to change the details of the journey.',
                '''The driver took too long to be appointed.''',
                'Other'
              ].map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Row(
                      children: [
                        Image.asset(
                          e == 'I want to change the details of the journey.'
                              ? "assets/Ellipse 11.png"
                              : "assets/Ellipse 5.png",
                          width: 24,
                        ),
                        12.toW,
                        Text(
                          e,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: "background: #656565;".toHexColor()),
                        ),
                      ],
                    ),
                  )),
              20.toh,
              AppButton(
                isRounded: true,
                label: 'Cancel Ride',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
