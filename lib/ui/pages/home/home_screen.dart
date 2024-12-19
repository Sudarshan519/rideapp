import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rideapp/ui/pages/home/search_pickup_screen.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';
import 'package:rideapp/ui/pages/widgets/custom_input.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                          hintText: "Current Location/Pickup point"),
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BottomSheetWidget(
                  height: 394,
                  child: HomeBottomSheet(),
                ))
          ],
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    this.height,
    required this.child,
  });
  final Widget child;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            itemBuilder: (i, _) => const HistoryLocation(),
            separatorBuilder: (i, _) => Divider(
                  color: Colors.grey.shade200,
                ),
            itemCount: 5),
        Divider(
          color: Colors.grey.shade200,
        ),
      ],
    );
  }
}

class HistoryLocation extends StatelessWidget {
  const HistoryLocation({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
  });
  final String? title;
  final String? subtitle;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
      child: Row(
        children: [
          icon ??
              const Icon(
                Icons.watch_later_outlined,
                size: 32,
                color: Colors.grey,
              ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? "Steak Resturant", style: Get.textTheme.bodyLarge),
              Text(
                subtitle ?? "8 Norman St, East Sydney, NSW 2010",
                style: Get.textTheme.bodyMedium
                    ?.copyWith(color: Colors.grey.shade700),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/WhatsApp Image 2022-05-14 at 10.51 1.png",
      fit: BoxFit.fitWidth,
      width: double.infinity,
    );
  }
}
