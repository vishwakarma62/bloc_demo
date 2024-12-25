import 'package:bloc_demo/common/tabView_text_widget.dart';
import 'package:bloc_demo/constant/app_spacer_constants.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Lottie.asset(Assets.lottieAnimationNoNetworkAnimation),
        AppSpacer.p32(),
        TabViewTextWidget(
            color: Theme.of(context).colorScheme.shadow,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            text: 'this is home page'),
      ],
    );
  }
}
