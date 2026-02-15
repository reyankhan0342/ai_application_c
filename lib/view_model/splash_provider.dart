import 'dart:developer';

import 'package:ai_chat_app/core/app_route/routes.dart';
import 'package:ai_chat_app/view/auth/login/login_view.dart';
import 'package:ai_chat_app/view/dashboard/home/home_page/home_view.dart';
import 'package:ai_chat_app/view/dashboard/main_menu/main_menu.dart';
import 'package:ai_chat_app/view/onboarding/onboarding_page.dart';
import 'package:ai_chat_app/view/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:go_router/go_router.dart';

class SplashProvider extends ChangeNotifier {
  SplashProvider() {}

  Future<void> navigatorSplash(BuildContext context) async {
    await Future.delayed(Duration(seconds: 5));
    if (context.mounted) {
      context.go(RouteNames.dashboard);
    } else {
      log('message errror');
    }
  }
}
