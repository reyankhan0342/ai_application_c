// ignore_for_file: unnecessary_null_comparison, non_constant_identifier_names

import 'dart:developer';

import 'package:ai_chat_app/core/util/helper.dart';
import 'package:ai_chat_app/data/model/sign_in_model.dart';
import 'package:ai_chat_app/data/model/sign_up_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart'
    show GoogleSignIn, GoogleSignInAccount, GoogleSignInAuthentication;
import 'package:http/http.dart' as http show get;
import 'package:provider/provider.dart';

class DatabaseServices {
  final _auth = FirebaseAuth.instance;

  final _fireStore = FirebaseFirestore.instance;
  final _storeage = FirebaseStorage;

  /////.  Regertration  Services ///////////////////////////////////////////////////////////////////////////////////////////////////

  Future<bool> userAccountRegister(SignUpModel model) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: model.UserEmail!,
        password: model.userPassword!,
      );
      final uid = userCredential.user?.uid;

      if (uid != null && uid.isNotEmpty) {
        log("user id ===>>>>>>${uid.toString()}");
        await Helper().setUserId(uid);

        model.userId = uid;

        try {
          await _fireStore
              .collection("UsersAcount")
              .doc(uid)
              .set(model.toJson());
          log("User account data stored successfully in database");
        } catch (e) {
          log("Failed to store user account in database: $e");
        }

        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(
        "Registration Failed: $e",
      ); // Let provider handle the error
    }
  }

  /////.  Login or Sign In   Services ///////////////////////////////////////////////////////////////////////////////////////////////////

  Future<bool> userSignInMethod(SignInModel model) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: model.UserEmail!.trim(),
        password: model.userPassword!.trim(),
      );

      final uid = userCredential.user?.uid;
      if (uid != null && uid.isNotEmpty) {
        await Helper().setUserId(uid);
        model.userId = uid;
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception("Login Failed: $e");
    }
  }

  /////.  Sign Up   With  Google   ///////////////////////////////////////////////////////////////////////////////////////////////////

  GoogleSignIn _googleSignIn = GoogleSignIn();

  /// Sign in with Google and return Firebase User

  Future<void> signInWithGoogle({required BuildContext context}) async {
    debugPrint('Google login calling');
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        Fluttertoast.showToast(
          msg: "Google_login_cancelled.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential = await _auth.signInWithCredential(
        credential,
      );
      User? user = userCredential.user;

      if (user != null) {
        String userId = user.uid;
        String userName = user.displayName ?? 'No Name';
        String userEmail = user.email ?? 'No Email';
        String userProfileImage = user.photoURL ?? '';

        print('=== Google User Info ===');
        print('ID: $userId');
        print('Name: $userName');
        print('Email: $userEmail');
        print('Profile Image: $userProfileImage');
        print('========================');
        Fluttertoast.showToast(
          msg: "User_successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
        Fluttertoast.showToast(
          msg: "Google Sign-In failed.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } catch (e) {
      log("Error during Google Sign-In: $e");
      Fluttertoast.showToast(
        msg: "Error during Google Sign-In: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  Future<bool> checkUserExistsById({required String userId}) async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    debugPrint("Checking if user already exists with ID: $userId");

    try {
      final DocumentSnapshot userDoc = await firestore
          .collection('AllUser')
          .doc(userId)
          .get();

      if (userDoc.exists) {
        return true;
      }

      return false;
    } catch (e) {
      log("Error checking user existence: $e");
      return false;
    }
  }

  Future<void> uploadImageToFirebaseStorage(
    User user,
    String? imageUrl,
    BuildContext context,
  ) async {
    try {
      final response = await http.get(Uri.parse(imageUrl!));
      final bytes = response.bodyBytes;

      final ref = FirebaseStorage.instance
          .ref()
          .child('user_images')
          .child('${user.uid}.jpg');

      await ref.putData(bytes);

      final imageDownloadUrl = await ref.getDownloadURL();
      log('Image uploaded successfully, download URL: $imageDownloadUrl');

      // await saveUserToFirestore(user, context, imageDownloadUrl);
    } catch (e) {
      log("Error uploading image to Firebase Storage: $e");
      Fluttertoast.showToast(
        msg: "Error uploading image: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  // Future<void> addDeviceTokenToFirestore(String userId, String token) async {
  //   final FirebaseFirestore firestore = FirebaseFirestore.instance;
  //   try {
  //     final userDocRef = firestore.collection('AllUser').doc(userId);

  //     await userDocRef.set({
  //       'deviceToken':
  //           FieldValue.arrayUnion([token]), // Add token if not present
  //     }, SetOptions(merge: true));

  //     log("Device token added successfully.");
  //   } catch (e) {
  //     log("Error adding device token to Firestore: $e");
  //   }
  // }
}
