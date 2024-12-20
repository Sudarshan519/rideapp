import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.isRounded = false,
    this.height,
    this.width,
    required this.label,
    this.padding,
    this.onPressed,
  }) : super(key: key);
  final bool isRounded;
  final String label;
  final onPressed;
  final double? height;
  final double? width;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    TextStyle buttonStyle =
        TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w600);

    return Container(
      margin:
          padding == null ? null : EdgeInsets.symmetric(horizontal: padding!),
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 50.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Palette.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(isRounded ? 60 : 8))),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              label,
              style: buttonStyle.copyWith(color: Colors.white),
            ),
          )),
    );
  }
}
