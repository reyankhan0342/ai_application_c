import 'package:ai_chat_app/core/app_route/routes.dart';
import 'package:ai_chat_app/cutom_widget/custom_dilog.dart';
import 'package:ai_chat_app/cutom_widget/custom_snack_bar.dart';
import 'package:ai_chat_app/data/model/sign_in_model.dart';
import 'package:ai_chat_app/data/services/database_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInProvider extends ChangeNotifier {
  final GlobalKey<FormState> _formKeylogin = GlobalKey<FormState>();
  GlobalKey<FormState> get formKeySignIn => _formKeylogin;

  final _databaseService = DatabaseServices();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final nameController = TextEditingController();
  final conformPasswordController = TextEditingController();

  bool isPasswordVisible = false;

  void passwordVisbility(bool value) {
    isPasswordVisible = value;
    notifyListeners();
  }

  bool _isLoading = false;
  String errorMessage = '';
  bool get isloading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  //// Sign In Provider

  Future<void> userLogin(BuildContext context) async {
    setLoading(true);

    try {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      await _databaseService.userSignInMethod(
        SignInModel(UserEmail: email, userPassword: password),
      );

      setLoading(false);

      // ✅ Show success dialog
      SuccessDialog.show(context);

      await Future.delayed(const Duration(seconds: 3));

      Navigator.pop(context);
      context.go(RouteNames.dashboard);
    } on FirebaseAuthException catch (e) {
      setLoading(false);

      String message;

      switch (e.code) {
        case 'user-not-found':
          message = "No user found for this email.";
          break;
        case 'wrong-password':
          message = "Incorrect password.";
          break;
        case 'invalid-email':
          message = "Invalid email format.";
          break;
        case 'invalid-credential':
          message = "Invalid email or password.";
          break;
        default:
          message = "Login failed. Please try again.";
      }

      CustomSnackBar().snackbar(context, message);
    } catch (e) {
      setLoading(false);
      CustomSnackBar().snackbar(
        context,
        "Something went wrong. Please try again.",
      );
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      setLoading(true);
      print("Starting Google Sign-In...");
      // Call the service and get the user data
      await _databaseService.signInWithGoogle(context: context).then((onValue) {
        CustomSnackBar().snackbar(context, "Google Sign In  Sucessfully.");

        setLoading(false);
      });
      // Print the user data
      print("Google Sign-In successful!");
      // print("User ID: ${userModel.}");
      // print("User Name: ${userModel.}");
      // print("User Email: ${userModel.email}");
    } catch (e) {
      setLoading(false);

      print("Google Sign-In error: $e");
    }
  }
}
