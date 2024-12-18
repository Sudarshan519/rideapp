import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rideapp/ui/pages/login/login.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';
import 'package:rideapp/ui/pages/widgets/app_button.dart';
import 'package:rideapp/ui/pages/widgets/textstyles.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButtonWidget(),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Phone Verification",
                style: Get.textTheme.headlineLarge,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Enter your OTP Code",
                style: Get.textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            PinCodeTextField(
              enableActiveFill: true,
              obscureText: true,
              autoFocus: true,
              appContext: context,
              length: 5,
              onChanged: (String value) {},
              textStyle: AppTextStyles.large,
              keyboardType: TextInputType.number,
              onCompleted: (v) {},
              inputFormatters: const [
                // FilteringTextInputFormatter.digitsOnly,
                // LengthLimitingTextInputFormatter(4),
              ],
              cursorColor: Colors.transparent,
              autoDisposeControllers: false,
              animationType: AnimationType.none,
              pinTheme: PinTheme(
                fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 8),
                fieldHeight: 48,
                fieldWidth: 52,
                shape: PinCodeFieldShape.box,
                inactiveFillColor: Colors.white,
                activeColor: Palette.primary,
                selectedColor: Palette.primary,
                selectedFillColor: Colors.white,
                activeFillColor: const Color.fromRGBO(247, 246, 255, 1),
                inactiveColor: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(9.r),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive code? ",
                  style: Get.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(const Otp());
                  },
                  child: Text(
                    "Resend",
                    style: Get.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Palette.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            AppButton(
              label: 'Verify',
              onPressed: () {
                Get.to(()=>SignIn());
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_back_ios,
              size: 24,
              weight: 1,
              color: Colors.grey,
            ),
            Text(
              "Back",
              style: Get.textTheme.bodyLarge
                  ?.copyWith(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
