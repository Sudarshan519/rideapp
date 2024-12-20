import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/ui/pages/home/home_screen.dart';
import 'package:rideapp/ui/pages/home/widgets/rider_confirm.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';
import 'package:rideapp/ui/pages/widgets/app_button.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
        // height: 432,
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/Group 11264.png",
          height: 208,
          width: 166,
        ),
        SizedBox(
          width: 357,
          height: 8,
          child: LinearProgressIndicator(
            color: Palette.primary,
            borderRadius: BorderRadius.circular(8),
            value: .8,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Please hold! we are searching for\nnearby driver for you",
          style: TextStyle(
            fontSize: 15,
            color: "#28272F".toHex(),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: AppButton(
            isRounded: true,
            label: 'Cancel Ride',
            onPressed: () {
              Get.to(
                  () => const WithMap(
                        child: RiderConfirm(),
                      ),
                  preventDuplicates: false);
            },
          ),
        )
      ],
    ));
  }
}

class WithMap extends StatelessWidget {
  const WithMap({super.key, required this.child, this.positionedWidget});
  final Widget child;
  final Widget? positionedWidget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Stack(children: [
        const Map(),
        if (positionedWidget != null) positionedWidget!,
      ])),
      bottomSheet: child,
    );
  }
}