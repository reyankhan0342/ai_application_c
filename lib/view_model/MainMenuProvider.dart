import 'package:ai_chat_app/view/dashboard/history/history_view.dart';
import 'package:ai_chat_app/view/dashboard/home/home_page/home_view.dart';
import 'package:ai_chat_app/view/dashboard/premium/premium_view.dart';
import 'package:ai_chat_app/view/dashboard/profile/profile_view.dart';
import 'package:flutter/material.dart';

class MainMnuprovider extends ChangeNotifier {
  int selectedIndex = 0;

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  late List screenList;

  MainMnuprovider() {
    init();
  }

  init() async {
    Screens();
  }

  void setLoading(bool value) {
    if (_isLoading != value) {
      _isLoading = value;
      notifyListeners();
    }
  }

  void Screens() {
    screenList = [HomeView(), HistoryView(), PremiumView(), ProfileView()];
  }

  Future<void> changeScreen(int index) async {
    setLoading(true);
    await Future.delayed(Duration(seconds: 1));
    selectedIndex = index;
    setLoading(false);
    notifyListeners();
  }
}
