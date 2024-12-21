import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rideapp/ui/pages/home/payments/apply_coupon.dart';
import 'package:rideapp/ui/pages/home/widgets/rider_confirm.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';
import 'package:rideapp/ui/pages/widgets/app_button.dart';

var blurredContianer = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        blurRadius: 1,
        // spreadRadius: 1,
        offset: Offset(0, 3),
        color: Colors.grey.shade200,
      )
    ]
    // box-shadow: 0px 4px 10px 0px #00000012;

    );

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeader(title: 'Payment Method'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  30.toh,
                  InkWell(
                    onTap: () {
                      Get.to(ApplyCoupon());
                    },
                    child: Container(
                      height: 54.h,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              // spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.grey.shade200,
                            )
                          ]
                          // box-shadow: 0px 4px 10px 0px #00000012;

                          ),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apply Coupon",
                            style: Get.textTheme.titleMedium,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                  20.toh,
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 50.h,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(50)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(50)),
                                hintText: 'Enter Coupon Code',
                                hintStyle: TextStyle(
                                    color: "#B4B4B4".toHex(),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ),
                      20.toW,
                      Expanded(
                        child: AppButton(
                          isRounded: true,
                          label: 'Apply',
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  40.toh,
                  Row(
                    children: [
                      "Add New Card".toLargeText18,
                      Spacer(),
                      Icon(
                        Icons.add,
                        color: Palette.primary,
                        size: 28,
                      )
                    ],
                  ),
                  20.toh,
                  Container(
                    height: 68.h,
                    decoration: blurredContianer,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/filename@3x.png",
                          height: 16,
                        ),
                        18.toW,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ...List.generate(
                                    4,
                                    (i) => Padding(
                                          padding:
                                              const EdgeInsets.only(right: 4.0),
                                          child: Icon(
                                            Icons.circle,
                                            size: 5,
                                          ),
                                        )).toList(),
                                8.toW,
                                ...List.generate(
                                    4,
                                    (i) => Padding(
                                          padding:
                                              const EdgeInsets.only(right: 4.0),
                                          child: Icon(
                                            Icons.circle,
                                            size: 5,
                                          ),
                                        )).toList(),
                                8.toW,
                                "52".toMediumText14,
                                8.toW,
                                "2456".toMediumText14,
                              ],
                            ),
                            "Expiry 04 july 2023".toSmallText10,
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 16, vertical: 18),
                  ),
                  20.toh,
                  Container(
                    height: 68.h,
                    decoration: blurredContianer,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 44,
                          child: Image.asset(
                            "assets/filename(1)@3x.png",
                            width: 14,
                            height: 18,
                          ),
                        ),
                        12.toW,
                        "Paypal".toLargeText16bold
                      ],
                    ).paddingSymmetric(horizontal: 16, vertical: 20),
                  ),
                  20.toh,
                  Container(
                    height: 68.h,
                    decoration:
                        blurredContianer.copyWith(color: Palette.primary),
                    child: Row(
                      children: [
                        SizedBox(height: 47, child: CashWithCircle()),
                        12.toW,
                        "Cash".toText(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                      ],
                    ).paddingSymmetric(horizontal: 16, vertical: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BookRide().marginOnly(bottom: 20, left: 18, right: 18),
    );
  }
}

class BookRide extends StatelessWidget {
  const BookRide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "\$52",
                style: TextStyle(
                  color: Palette.primary,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "Price",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        20.toW,
        SizedBox(
          height: 50,
          width: 258,
          child: AppButton(
            isRounded: true,
            label: "Book Ride",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class CustomHeader extends StatelessWidget {
  final String title;

  // Constructor to allow custom title text
  CustomHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // Height of the header, same as AppBar default height
      padding: EdgeInsets.symmetric(
          horizontal: 16.0), // Horizontal padding for content

      child: Stack(
        alignment: Alignment.center,
        children: [
          // Back Button with Icon and Text
          InkWell(
              onTap: () {
                Navigator.pop(context); // Handle the back action
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 16, // Icon size
                    // color: Colors.b, // Icon color
                  ),
                  SizedBox(width: 4.0), // Space between icon and text
                  Text(
                    "Back", // Text next to the icon
                    overflow: TextOverflow.ellipsis, // In case text is too long
                    style: TextStyle(
                      fontSize: 14.0, // Text size
                      color: "background: #414141;".toHexColor(),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )),
          // Centered title text (like AppBar's title)
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Get.theme.appBarTheme.titleTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
