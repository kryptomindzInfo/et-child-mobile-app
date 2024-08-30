import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/view/onboarding/PageView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum DemoType {
  custom,
  gif,
  fadeIn,
  scale,
  dynamicNextScreenFadeIn,
  usingBackgroundImage,
  usingGradient,
  lottieAnimation,
}

// ignore: must_be_immutable
class UiHelper extends StatefulWidget {
  UiHelper({super.key, required this.demoType});

  DemoType demoType;

  @override
  State<UiHelper> createState() => _UiHelperState();
}

class _UiHelperState extends State<UiHelper> {
  @override
  Widget build(BuildContext context) {
    switch (widget.demoType) {
      case DemoType.gif:
        return FlutterSplashScreen.gif(
          backgroundColor: Color(0xff2E3190),
          useImmersiveMode: true,
          gifPath: AppAssets.splash_logo,
          gifWidth: 269,
          gifHeight: 474,
          nextScreen: MyPageView(),
          duration: const Duration(milliseconds: 3515),
          onInit: () async {
            debugPrint("onInit 1");
            await Future.delayed(const Duration(milliseconds: 2000));
            debugPrint("onInit 2");
          },
          onEnd: () async {
            debugPrint("onEnd 1");
            debugPrint("onEnd 2");
          },
        );

      default:
        return Placeholder();
    }
  }
}