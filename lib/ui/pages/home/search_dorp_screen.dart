import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/ui/pages/home/home_screen.dart';
import 'package:rideapp/ui/pages/home/pinlocation%20copy.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';
import 'package:rideapp/ui/pages/widgets/custom_input.dart';

class SearchDropScreen extends StatefulWidget {
  const SearchDropScreen({super.key});

  @override
  State<SearchDropScreen> createState() => _SearchDropScreenState();
}

class _SearchDropScreenState extends State<SearchDropScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primary,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        height: 28,
                        width: 28,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          "assets/Path 15.png",
                          height: 12,
                          width: 12,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text("Search Drop",
                        style: Get.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomInputField(
                onTap: () {},
                enabled: true,
                backgroundColor: "#F7F6FF".toHex(),
                hintText: "Where would you go?",
                prefix: Image.asset("assets/search.png"),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Image.asset(
                    "assets/heart.png",
                    height: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      ListView.separated(
                          padding: const EdgeInsets.only(top: 20),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (i, _) => InkWell(
                                onTap: () =>
                                    Get.to(() => const PinDropLocation()),
                                child: HistoryLocation(
                                  title: "Work",
                                  icon: Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Colors.deepPurple.shade200,
                                    weight: .5,
                                  ),
                                ),
                              ),
                          separatorBuilder: (i, _) => Divider(
                                color: Colors.grey.shade200,
                              ),
                          itemCount: 2),
                      ...[
                        '250 west, industrial area',
                        '4 number gali pratap nagar',
                        'Neemuch RD. Gopalbari, Bari Sad',
                        '250 west, industrial area',
                        '4 number gali pratap nagar',
                        'Neemuch RD. Gopalbari, Bari Sad'
                      ]
                          .map((e) => ListTile(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                minLeadingWidth: 0,
                                leading: const Icon(
                                  Icons.circle,
                                  size: 12,
                                ),
                                title: Text(e),
                              ))
                          .toList(),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
