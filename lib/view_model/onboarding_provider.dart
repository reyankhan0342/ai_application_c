import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/core/constant/app_string.dart';
import 'package:ai_chat_app/view/auth/login/login_view.dart';
import 'package:ai_chat_app/view/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';

class OnboardingProvider extends ChangeNotifier {
  PageController _pageController = PageController();
  PageController get pageController => _pageController;
  int currentPage = 0;
  final string = AppString();
  void ChangeOnboardingPage(index) {
    currentPage = index;
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    if (currentPage < string.onboardingData.length - 1) {
      pageController.animateToPage(
        currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.off(() => LoginView());
    }
  }
}
