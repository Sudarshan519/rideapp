import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rideapp/ui/pages/otp/otp.dart';
import 'package:rideapp/ui/pages/utils/colors.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';
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
              SizedBox(height: 16),
              const BackButtonWidget(),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Sign up",
                style: Get.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
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
                ),
                inputDecoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    hintText: "Mobile Number",
                    isDense: false,
                    errorStyle: TextStyle(
                        fontSize: 10.spMin, color: Colors.red.shade800),
                    errorMaxLines: 2,
                    hintStyle: AppTextStyles.normal.copyWith(
                      color: "#A0A0A0".toHex(),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    // prefixIconConstraints: BoxConstraints(
                    //     minWidth: 0, maxHeight: Platform.isIOS ? 24.r : 18.r),
                    suffixIconConstraints:
                        BoxConstraints(minWidth: 0, maxHeight: 18.r),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade800)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.primaryBlue)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400))),
                onInputChanged: (e) {},
                onInputValidated: (bool value) {},
                selectorConfig: const SelectorConfig(
                    setSelectorButtonAsPrefixIcon: true,
                    useEmoji: true,
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useBottomSheetSafeArea: true,
                    leadingPadding: 12),
                ignoreBlank: false,
                formatInput: true,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: const UnderlineInputBorder(),
                onSaved: (PhoneNumber number) {},
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
                onPressed: () {
                  Get.to(() => const Otp());
                },
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
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        "assets/Gmail(1).png",
                        height: 24,
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                      height: 48,
                      width: 48,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        "assets/Facebook.png",
                        height: 24,
                        width: 24,
                      )),
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
