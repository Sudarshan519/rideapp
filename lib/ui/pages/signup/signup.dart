import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rideapp/ui/pages/otp/otp.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';
import 'package:rideapp/ui/pages/widgets/app_button.dart';
import 'package:rideapp/ui/pages/widgets/custom_input.dart';
import 'package:rideapp/ui/pages/widgets/textstyles.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                height: 30,
              ),
              Text(
                "Sign up",
                style: Get.textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomInputField(
                hintText: 'Name',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomInputField(
                hintText: 'Email',
              ),
              const SizedBox(
                height: 20,
              ),
              InternationalPhoneNumberInput(
                initialValue: PhoneNumber(
                  // dialCode: getIt<EkycCubit>()
                  //         .state
                  //         .kycForm
                  //         ?.emergency_number_country ??
                  //     "+81",
                  isoCode: "IN",
                  phoneNumber: '',
                ),
                validator: (str) {
                  return null;
                },

                selectorTextStyle: AppTextStyles.normal.copyWith(
                  color: Colors.black,
                ),
                textStyle: AppTextStyles.normal.copyWith(
                  color: Colors.black,
                ),
                searchBoxDecoration: const InputDecoration(
                  hintText: "Search ...",
                  // isDense: true,
                  // contentPadding:
                  //     EdgeInsets.symmetric(vertical: 6.r),
                ),
                inputDecoration: InputDecoration(
                    isDense: false,
                    // contentPadding: EdgeInsets.symmetric(vertical: 6.r),
                    errorStyle: TextStyle(
                        fontSize: 10.spMin, color: Colors.red.shade800),
                    errorMaxLines: 2,
                    hintStyle: AppTextStyles.normal
                        .copyWith(color: Colors.black.withOpacity(0.3)),
                    prefixIconConstraints: BoxConstraints(
                        minWidth: 0, maxHeight: Platform.isIOS ? 24.r : 18.r),
                    suffixIconConstraints:
                        BoxConstraints(minWidth: 0, maxHeight: 18.r),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade800)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.primaryBlue)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300))),
                onInputChanged: (e) {},
                onInputValidated: (bool value) {
                  // print(value);
                },
                selectorConfig: const SelectorConfig(
                    setSelectorButtonAsPrefixIcon: true,
                    useEmoji: true,
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useBottomSheetSafeArea: true,
                    leadingPadding: 12),
                ignoreBlank: false,

                // autoValidateMode:
                //     AutovalidateMode.o,
                // initialValue: number,
                // textFieldController: emergencyContact,
                formatInput: true,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: const UnderlineInputBorder(),
                onSaved: (PhoneNumber number) {
                  // print('On Saved: $number');
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: "By signing up. you agree to the "),
                          TextSpan(
                            text: "Terms of service ",
                            style: TextStyle(color: Palette.primary),
                          ),
                          const TextSpan(text: "and "),
                          TextSpan(
                            text: "Privacy policy.",
                            style: TextStyle(color: Palette.primary),
                          )
                        ],
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              AppButton(
                label: 'Sign up',
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: Divider()),
                  SizedBox(
                    width: 8,
                  ),
                  Text("or"),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: Divider()),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Spacer(),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/Gmail(1).png",
                            height: 24,
                          ))),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/Facebook.png",
                            height: 24,
                          ))),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
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
                      "Sign in",
                      style: Get.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Palette.primary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
