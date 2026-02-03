import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/core/state_mangment/MainMenuProvider/MainMenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class NewchatScreen extends StatelessWidget {
  const NewchatScreen({super.key});

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
          'Speaking to ZAP!',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(children: [

        ],
      ),
    );
  }
}
