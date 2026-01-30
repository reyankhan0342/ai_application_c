import 'package:ai_chat_app/core/state_mangment/MainMenuProvider/MainMenuProvider.dart';
import 'package:ai_chat_app/core/state_mangment/SignInProvider/signInProvider.dart';
import 'package:ai_chat_app/core/state_mangment/SignUpProvider/signUpProvider.dart';
import 'package:ai_chat_app/view/dashboard/main_menu/main_menu.dart';
import 'package:ai_chat_app/view/onboarding_view/page1.dart';
import 'package:ai_chat_app/view/splash_screen/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'AI ChatApp',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: child,
          );
        },
        child: const Page1(),
      ),
    );
  }
}
