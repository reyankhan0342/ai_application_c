import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/view/auth/login/login_view.dart';
import 'package:ai_chat_app/view/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';

class OnboardingProvider extends ChangeNotifier {
  PageController _pageController = PageController();
  PageController get pageController => _pageController;
  int currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': AppIcons().chatbot,
      'title': 'Hi! I’m Zap',
      'subtitle': 'An AI-powered chatbot.',
    },
    {
      'image': AppIcons().chatbot,
      'title': 'About my capabilities:',
      'subtitle': '''May occasionally generate incorrect information or
        May produce biased content. May occasionally generate incorrect information or
        May produce biased content.''',
    },
    {
      'image': AppIcons().chatbot2,
      'title': 'My Limitations:',
      'subtitle': '''May occasionally generate incorrect information or
       May produce biased content. May occasionally generate incorrect information or
       May produce biased content.''',
    },
  ];

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
    if (currentPage < onboardingData.length - 1) {
      pageController.animateToPage(
        currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.off(() => LoginScreen());
    }
  }
}
