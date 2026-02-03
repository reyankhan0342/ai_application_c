import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/view_model/MainMenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MainMnuprovider>(context, listen: false);

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
          'Chat with ZAP! ',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 18.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [SizedBox()]),
      ),
    );
  }
}
