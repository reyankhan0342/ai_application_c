import 'package:ai_chat_app/view/dashboard/history_page/history_page.dart';
import 'package:ai_chat_app/view/dashboard/home/check_grameer/check_grammer_page.dart';
import 'package:ai_chat_app/view/dashboard/home/code/code_page.dart';
import 'package:ai_chat_app/view/dashboard/home/newchat/newchat.dart';
import 'package:ai_chat_app/view/dashboard/home/recording/recording_page.dart';
import 'package:ai_chat_app/view/dashboard/home/searchImage/serach_by_image.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int selectedIndex = 0;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  late List screenList;

  MainMnuprovider() {
    init();
  }

  init() async {}

  void setLoading(bool value) {
    if (_isLoading != value) {
      _isLoading = value;
      notifyListeners();
    }
  }
}
