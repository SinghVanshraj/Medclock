import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medclock/core/services/fire_base_services.dart';
import 'package:medclock/features/models/auth_model.dart';

class AuthServices {
  final _auth = FireBaseServices.auth;

  AuthModel? _userFromFirebase(User? user) {
    if (user == null) return null;

    return AuthModel(email: user.email!, uid: user.uid);
  }

  Future<AuthModel?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _userFromFirebase(result.user);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<AuthModel?> signup(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _userFromFirebase(result.user);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Stream<AuthModel?> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  Future<void> forgetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email.trim());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
