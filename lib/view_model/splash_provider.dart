import 'package:ai_chat_app/view/auth/login/login_view.dart';
import 'package:ai_chat_app/view/dashboard/home/home_page/home_screen.dart';
import 'package:ai_chat_app/view/onboarding/onboarding_page.dart';
import 'package:ai_chat_app/view/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_state_manager/get_state_manager.dart';
import 'package:get_x/route_manager.dart';

class SplashProvider extends ChangeNotifier {
  SplashProvider() {
    init();
  }

  init() async {
    print(' splash provider called..........');
    await navigatorSplash();
  }

  Future<void> navigatorSplash() async {
    await Future.delayed(Duration(seconds: 3));
    Get.off(() => OnboardingPage1());
  }
}
