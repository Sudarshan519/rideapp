import 'package:flutter/material.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';

extension HexTOColor on String {
  Color toHex() {
    return HexColor.fromHex(this);
  }
}
