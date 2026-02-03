import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/core/const/lanauge.dart';
import 'package:ai_chat_app/core/state_mangment/MainMenuProvider/MainMenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VoiceSpeach extends StatefulWidget {
  const VoiceSpeach({super.key});

  @override
  State<VoiceSpeach> createState() => _VoiceSpeachState();
}

class _VoiceSpeachState extends State<VoiceSpeach> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MainMnuprovider>(context, listen: false);

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            model.changeScreen(-0);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 32, height: 33),
          ),
        ],
        title: Text(
          'Speaking to ZAP!',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.h),

              Text(
                'Please Go Ahead. I am Listening',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  height: 280,
                  width: screenWidth,
                  child: Image.asset(AppIcons().chatbot),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                width: screenWidth,
                height: 200.h,

                child: SingleChildScrollView(
                  child: Text(
                    Lanauge().message,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                        wordSpacing: 1.1,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Material(
                        color: Colors.blue,
                        shape: const CircleBorder(),
                        elevation: 6,
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () {
                            print("Record tapped");
                          },
                          splashColor: Colors.white.withOpacity(0.3),
                          highlightColor: Colors.blue.shade600,
                          child: const SizedBox(
                            width: 60,
                            height: 60,
                            child: Center(
                              child: Icon(
                                Icons.mic,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 10,
                        right: -90,
                        child: Material(
                          color: Colors.blue,
                          shape: const CircleBorder(),
                          elevation: 6,
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {
                              print("i18 tapped");
                            },
                            splashColor: Colors.white.withOpacity(0.3),
                            highlightColor: Colors.blue.shade600,
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Center(
                                child: Image.asset(
                                  AppIcons().i18,
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
