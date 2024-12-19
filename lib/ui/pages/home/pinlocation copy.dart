import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rideapp/ui/pages/home/home_screen.dart';
import 'package:rideapp/ui/pages/home/search_pickup_screen.dart';
import 'package:rideapp/ui/pages/home/select_ride/select_ride.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';
import 'package:rideapp/ui/pages/widgets/app_button.dart';
import 'package:rideapp/ui/pages/widgets/custom_input.dart';

class PinDropLocation extends StatefulWidget {
  const PinDropLocation({super.key});

  @override
  State<PinDropLocation> createState() => _PinDropLocationState();
}

class _PinDropLocationState extends State<PinDropLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const Map(),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 50.h,
                child: const Row(children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: Colors.green,
                  ),
                  Expanded(
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          border: InputBorder.none,
                          hintText: "XTRI- Din Tai Fung"),
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(
                bottom: 50,
                left: 20,
                right: 20,
                child: AppButton(
                  label: 'Confirm Drop',
                  onPressed: () {
                    Get.to(() => const SelectRidePage());
                  },
                )),
            Positioned(
                top: 280,
                left: 60,
                right: 120,
                child: Image.asset(
                  'assets/ic_Pin-2.png',
                  height: 40,
                )),
          ],
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 394,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Where are you going today?",
                  style: Get.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Get.to(() => const SearchPickupScreen()),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomInputField(
                  onTap: () {
                    Get.to(() => const SearchPickupScreen());
                  },
                  enabled: false,
                  backgroundColor: "#F7F6FF".toHex(),
                  hintText: "Where would you go?",
                  prefix: const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Image.asset(
                      "assets/heart.png",
                      height: 24,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey.shade200,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (i, _) =>
                    InkWell(onTap: () {}, child: const HistoryLocation()),
                separatorBuilder: (i, _) => Divider(
                      color: Colors.grey.shade200,
                    ),
                itemCount: 5),
            Divider(
              color: Colors.grey.shade200,
            ),
          ],
        ),
      ),
    );
  }
}
