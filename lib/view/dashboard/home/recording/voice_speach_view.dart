import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/core/constant/app_string.dart';
import 'package:ai_chat_app/view_model/MainMenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VoiceSpeachView extends StatefulWidget {
  const VoiceSpeachView({super.key});

  @override
  State<VoiceSpeachView> createState() => _VoiceSpeachViewState();
}

class _VoiceSpeachViewState extends State<VoiceSpeachView> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MainMnuprovider>(context, listen: false);

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            model.changeScreen(-0);
          },
          child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
        ),
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 25.w),
          ),
        ],
        title: Text(
          'Speaking to ZAP!',
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
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
              SizedBox(height: 15.h),

              Text(
                'Please Go Ahead. I am Listening',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  height: 160.h,
                  width: screenWidth,
                  child: Image.asset(AppIcons().chatbot),
                ),
              ),

              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.all(10),
                width: screenWidth,
                height: 310.h,

                child: SingleChildScrollView(
                  child: Text(
                    textAlign: TextAlign.justify,
                    AppString().message,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        wordSpacing: 1.1,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15.h),
              Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
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
                        bottom: -20,
                        right: -130,
                        child: Material(
                          color: Colors.blue,
                          shape: const CircleBorder(),
                          elevation: 5,
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {
                              print("i18 tapped");
                            },
                            splashColor: Colors.white.withOpacity(0.3),
                            highlightColor: Colors.blue.shade600,
                            child: SizedBox(
                              width: 35,
                              height: 35,
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
