import 'package:flutter/material.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';

extension HexTOColor on String {
  Color toHex() {
    return HexColor.fromHex(this);
  }

  Color toHexColor() {
    return HexColor.fromHex(
        this.replaceAll('background: ', '').replaceAll(';', ''));
  }
}

extension StringAddition on num {
  num addNum(num value) {
    num currentValue = (this) ?? 0;
    num result = currentValue + value;
    return result;
  }
}

class sb extends StatelessWidget {
  const sb({
    super.key,
    this.height,
    this.width,
  });
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
    );
  }
}

extension SizzedBox on int {
  Widget get toh => toheight();

  /// to sizedbox width
  Widget get toW => toWidth();
  Widget toheight() => sb(height: toDouble());
  Widget toWidth() => sb(width: toDouble());
}
