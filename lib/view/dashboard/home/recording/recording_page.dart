import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/core/state_mangment/MainMenuProvider/MainMenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class VoiceSpeach extends StatelessWidget {
  const VoiceSpeach({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Consumer<MainMnuprovider>(
      builder: (BuildContext context, provider, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                provider.changeScreen(-0);
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
          body: Column(children: [


          ],),
        );
      },
    );
  }
}
