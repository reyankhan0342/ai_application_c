import 'package:ai_chat_app/view_model/home_provider.dart';
import 'package:ai_chat_app/view_model/MainMenuProvider.dart';
import 'package:ai_chat_app/view_model/signInProvider.dart';
import 'package:ai_chat_app/view_model/signUpProvider.dart';
import 'package:ai_chat_app/view_model/onboarding_provider.dart';
import 'package:ai_chat_app/view_model/splash_provider.dart';
import 'package:ai_chat_app/view/onboarding_view/onboarding_page.dart';
import 'package:ai_chat_app/view/splash_screen/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_x/get.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignInProvider()),
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => MainMnuprovider()),
        ChangeNotifierProvider(create: (_) => OnboardingProvider()),
        ChangeNotifierProvider(create: (_) => SplashProvider()),

        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'AI ChatApp',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: child,
          );
        },
        child: SplashView(),
      ),
    );
  }
}
