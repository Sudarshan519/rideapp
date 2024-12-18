import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    TextStyle buttonStyle =
        TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w600);

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 55.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Palette.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: Container(
            alignment: Alignment.center,
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [
            //       HexColor.fromHex("#6609DE"),
            //       HexColor.fromHex("#7601D2"),
            //       HexColor.fromHex("#8F00C1"),
            //       HexColor.fromHex("#B100A9"),
            //     ],
            //     begin: Alignment.centerLeft,
            //     end: Alignment.centerRight,
            //   ),
            // borderRadius: BorderRadius.circular(5),
            // ),
            child: Text(
              label,
              style: buttonStyle.copyWith(color: Colors.white),
            ),
          )),
    );
  }
}
