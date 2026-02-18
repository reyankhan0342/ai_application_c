import 'package:ai_chat_app/core/app_route/routes.dart';
import 'package:ai_chat_app/view/auth/login/login_view.dart';
import 'package:ai_chat_app/view/auth/signUp/sign_up_view.dart';
import 'package:ai_chat_app/view/dashboard/history/history_view.dart';
import 'package:ai_chat_app/view/dashboard/home/chat/chat_view.dart';
import 'package:ai_chat_app/view/dashboard/home/home_page/home_view.dart';
import 'package:ai_chat_app/view/dashboard/home/img_search_view/serach_image_view.dart';
import 'package:ai_chat_app/view/dashboard/home/recording/voice_speach_view.dart';
import 'package:ai_chat_app/view/dashboard/main_menu/main_menu.dart';
import 'package:ai_chat_app/view/dashboard/premium/premium_view.dart';
import 'package:ai_chat_app/view/dashboard/profile/profile_view.dart';
import 'package:ai_chat_app/view/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteConfig {
  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.splashScreen,
    routes: [
      GoRoute(
        path: RouteNames.splashScreen,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RouteNames.dashboard,
        name: 'mainMenu',
        builder: (context, state) => MainMenu(),
      ),
      GoRoute(
        path: RouteNames.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: RouteNames.signInView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: RouteNames.signUpView,
        builder: (context, state) => SignUpView(),
      ),
      GoRoute(
        path: RouteNames.profileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: RouteNames.voiceSpeachView,
        builder: (context, state) => const VoiceSpeachView(),
      ),
      GoRoute(
        path: RouteNames.chatVeiw,
        builder: (context, state) => const ChatView(),
      ),
      GoRoute(
        path: RouteNames.historyView,
        builder: (context, state) => const HistoryView(),
      ),
      GoRoute(
        path: RouteNames.serachByImageScreen,
        builder: (context, state) => const SerachByImageScreen(),
      ),
      GoRoute(
        path: RouteNames.premiumView,
        builder: (context, state) => const PremiumView(),
      ),
    ],
  );
}
