import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/view_model/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final splashProvider = SplashProvider();
    splashProvider.navigatorSplash(context);
    return Consumer<SplashProvider>(
      builder: (BuildContext context, provider, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.blue,
          body: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppIcons().baccolor),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppIcons().img, width: 200.w, height: 200.w),
                  ],
                ),
              ),

              Positioned(
                bottom: 150.h,
                left: 0,
                right: 0,
                child: SpinKitThreeBounce(color: Colors.white, size: 20),
              ),
            ],
          ),
        );
      },
    );
  }
}
