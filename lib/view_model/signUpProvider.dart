import 'dart:async';
import 'dart:developer';
import 'dart:ffi';

import 'package:ai_chat_app/core/app_route/routes.dart';
import 'package:ai_chat_app/core/util/helper.dart';
import 'package:ai_chat_app/cutom_widget/custom_dilog.dart';
import 'package:ai_chat_app/cutom_widget/custom_snack_bar.dart';
import 'package:ai_chat_app/data/model/sign_up_model.dart';
import 'package:ai_chat_app/data/services/database_services.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpProvider extends ChangeNotifier {
  // final GlobalKey<FormState> _formKeySignUp = GlobalKey<FormState>();
  final _databaseSevice = DatabaseServices();

  // GlobalKey<FormState> get formKeySignUp => _formKeySignUp;

  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  final nameController = TextEditingController();
  final conformPasswordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final userNameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final conformFocusNode = FocusNode();
  String errorMessage = '';
  bool isVisable1 = false;

  void visbility(value) {
    isVisable1 = value;
    notifyListeners();
  }

  bool isVisable2 = false;

  void visbility2(value) {
    isVisable2 = value;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;

  setLoading(value) {
    _loading = value;
    notifyListeners();
  }

  //// Register user
  Future<void> userRegister(BuildContext context) async {
    setLoading(true);

    try {
      var name = nameController.text.trim();
      var email = emailcontroller.text.trim();
      var password = passwordController.text.trim();

      final userModel = SignUpModel(
        userName: name,
        UserEmail: email,
        userPassword: password,
      );

      await _databaseSevice.userAccountRegister(userModel);

      setLoading(false);

      SuccessDialog.show(context);

      await Future.delayed(Duration(seconds: 20));

      Navigator.pop(context);
      context.go(RouteNames.dashboard);
      notifyListeners();
    } catch (error) {
      setLoading(false);

      if (error.toString().contains('email-already-in-use')) {
        errorMessage = "This email is already registered";
      } else if (error.toString().contains('invalid-email')) {
        errorMessage = "Invalid email format";
      } else if (error.toString().contains('weak-password')) {
        errorMessage = "Password is too weak";
      } else {
        errorMessage = "Something went wrong!";
      }

      CustomSnackBar().snackbar(context, errorMessage);
    }

    notifyListeners();
  }
}
