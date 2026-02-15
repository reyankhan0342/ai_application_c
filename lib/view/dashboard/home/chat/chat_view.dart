import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/core/constant/app_string.dart';
import 'package:ai_chat_app/view_model/MainMenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final TextEditingController messageController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MainMnuprovider>(context, listen: false);
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.blue,

        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            model.changeScreen(-0);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 25.w),
          ),
        ],
        title: Text(
          'Chat with ZAP!',
          style: GoogleFonts.roboto(
            fontSize: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      // 🔹 CHAT BODY
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),

              Container(
                padding: const EdgeInsets.all(9),
                width: screenWidth * 0.5,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'welcome to zap! do you have new question',
                  style: GoogleFonts.roboto(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              SizedBox(height: 15.h),

              Container(
                padding: EdgeInsets.all(10.w),
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        width: 110.w,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Copied")),
                                );
                              },
                              child: Icon(Icons.copy, size: 15.w),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.share, size: 15.w),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.volume_up, size: 15.w),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      AppString().message + AppString().message,
                      style: GoogleFonts.roboto(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: MediaQuery.of(context).viewInsets.bottom + 8,
          top: 8,
        ),
        child: _chatInput(),
      ),
    );
  }

  Widget _chatInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            // Remove fixed height to allow vertical growth
            // height: 45.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue.withOpacity(0.5), width: 1),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 45.h, // minimum height
                maxHeight: 200.h, // maximum height to prevent overflow
              ),
              child: Scrollbar(
                child: TextField(
                  controller: messageController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null, // allow unlimited lines
                  style: TextStyle(
                    fontSize: 14.sp, // set font size
                    fontWeight: FontWeight.w400,
                  ),
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    hintText: "Type a message...",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8.w),
        // Send button example
        Material(
          color: Colors.blue,
          shape: const CircleBorder(),
          child: InkWell(
            onTap: () {
              print("Send tapped: ${messageController.text}");
            },
            child: SizedBox(
              width: 40,
              height: 40,
              child: Icon(Icons.send, color: Colors.white, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
