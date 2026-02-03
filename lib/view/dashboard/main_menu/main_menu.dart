import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/core/state_mangment/MainMenuProvider/MainMenuProvider.dart';
import 'package:ai_chat_app/view/dashboard/history_page/history_page.dart';
import 'package:ai_chat_app/view/dashboard/home/home_page/home_screen.dart';
import 'package:ai_chat_app/view/dashboard/home/newchat/newchat.dart';
import 'package:ai_chat_app/view/dashboard/home/recording/recording_page.dart';
import 'package:ai_chat_app/view/dashboard/home/searchImage/serach_by_image.dart';
import 'package:ai_chat_app/view/dashboard/premium_page/premium_page.dart';
import 'package:ai_chat_app/view/dashboard/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          bottomNavigationBar: Container(
            margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17),
              ),

              color: Colors.blueAccent,
            ),
            width: screenWidth,
            height: 80,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: GestureDetector(
                    onTap: () async {
                      await provider.changeScreen(0);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      // width: 70,
                      // height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons().i9,
                            width: 30,
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
                              fontSize: 9.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () async {
                      await provider.changeScreen(1);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      // width: 70,
                      // height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons().i10,
                            width: 30,
                            color: provider.selectedIndex == 1
                                ? Colors.white
                                : Color(0xff8DBFF1),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 9.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () async {
                      await provider.changeScreen(2);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      // width: 70,
                      // height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons().i11,
                            width: 30,
                            color: provider.selectedIndex == 2
                                ? Colors.white
                                : Color(0xff8DBFF1),
                          ),

                          Text(
                            'Premium',
                            style: TextStyle(
                              fontSize: 9.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () async {
                      await provider.changeScreen(3);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      // width: 70,
                      // height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons().i12,
                            width: 30,
                            color: provider.selectedIndex == 3
                                ? Colors.white
                                : Color(0xff8DBFF1),
                          ),

                          SizedBox(height: 5),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 9.sp,
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

          body: provider.isLoading == true
              ? Center(
                  child: CircularProgressIndicator(color: Colors.blueAccent),
                )
              : provider.selectedIndex == 4
              ? VoiceSpeach()
              : provider.selectedIndex == 5
              ? NewchatScreen()
              : provider.selectedIndex == 6
              ? SerachByImageScreen()
              : provider.screenList[provider.selectedIndex],
        );
      },
    );
  }
}
