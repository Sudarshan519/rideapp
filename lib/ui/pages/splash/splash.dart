import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rideapp/ui/pages/signup/signup.dart';
import 'package:rideapp/ui/pages/utils/extension.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(1.seconds, () => Get.off(() => const Signup()));
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      minTextAdapt: true,
      designSize: const Size(393, 852),
    );

    return Scaffold(
      backgroundColor: "#2e2c7f".toHex(),
      body: Center(
          child: Image.asset(
        "assets/splash.png",
        width: double.infinity,
      )),
    );
  }
}
