import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/view_model/MainMenuProvider.dart';
import 'package:ai_chat_app/view/dashboard/history/history_view.dart';
import 'package:ai_chat_app/view/dashboard/home/home_page/home_view.dart';
import 'package:ai_chat_app/view/dashboard/home/chat/chat_view.dart';
import 'package:ai_chat_app/view/dashboard/home/recording/voice_speach_view.dart';
import 'package:ai_chat_app/view/dashboard/home/img_search_view/serach_image_view.dart';
import 'package:ai_chat_app/view/dashboard/premium/premium_view.dart';
import 'package:ai_chat_app/view/dashboard/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Consumer<MainMnuprovider>(
      builder: (BuildContext context, provider, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.blue,
          bottomNavigationBar: Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(color: Colors.blue),
            width: screenWidth,
            height: 65,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.transparent, // important
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: Colors.white.withOpacity(0.2),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: () async {
                      await provider.changeScreen(0);
                    },
                    child: Container(
                      width: 70.w,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons().i9,
                              width:
                                  provider.selectedIndex == 0 ||
                                      provider.selectedIndex == 4 ||
                                      provider.selectedIndex == 5 ||
                                      provider.selectedIndex == 6
                                  ? 24.w
                                  : 22,
                              color:
                                  provider.selectedIndex == 0 ||
                                      provider.selectedIndex == 4 ||
                                      provider.selectedIndex == 5 ||
                                      provider.selectedIndex == 6
                                  ? Colors.white
                                  : Color(0xff8DBFF1),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize:
                                    provider.selectedIndex == 0 ||
                                        provider.selectedIndex == 4 ||
                                        provider.selectedIndex == 5 ||
                                        provider.selectedIndex == 6
                                    ? 11.sp
                                    : 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: Colors.white.withOpacity(0.2),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: () async {
                      provider.changeScreen(1);
                    },
                    child: Container(
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons().i10,
                              width: provider.selectedIndex == 1 ? 24 : 22,
                              color: provider.selectedIndex == 1
                                  ? Colors.white
                                  : Color(0xff8DBFF1),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'History',
                              style: TextStyle(
                                fontSize: provider.selectedIndex == 1 ? 11 : 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,

                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: Colors.white.withOpacity(0.2),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: () async {
                      await provider.changeScreen(2);
                    },
                    child: Container(
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons().i11,
                            width: provider.selectedIndex == 2 ? 22 : 20,
                            color: provider.selectedIndex == 2
                                ? Colors.white
                                : Color(0xff8DBFF1),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Premium',
                            style: TextStyle(
                              fontSize: provider.selectedIndex == 2 ? 11 : 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,

                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: Colors.white.withOpacity(0.2),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: () async {
                      await provider.changeScreen(3);
                    },
                    child: Container(
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons().i12,
                            width: provider.selectedIndex == 3 ? 24 : 22,
                            color: provider.selectedIndex == 3
                                ? Colors.white
                                : const Color(0xff8DBFF1),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: provider.selectedIndex == 3 ? 11 : 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          body: provider.selectedIndex == 4
              ? VoiceSpeachView()
              : provider.selectedIndex == 5
              ? ChatView()
              : provider.selectedIndex == 6
              ? SerachByImageScreen()
              : provider.screenList[provider.selectedIndex],
        );
      },
    );
  }
}
