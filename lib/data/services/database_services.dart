// ignore_for_file: unnecessary_null_comparison

import 'dart:developer';

import 'package:ai_chat_app/core/util/helper.dart';
import 'package:ai_chat_app/data/model/sign_up_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DatabaseServices {
  final _auth = FirebaseAuth.instance;

  final _fireStore = FirebaseFirestore.instance;
  final _storeage = FirebaseStorage;

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
}
