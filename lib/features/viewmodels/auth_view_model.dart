import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medclock/core/services/auth_services.dart';
import 'package:medclock/features/models/auth_model.dart';

class AuthViewModel extends ChangeNotifier {
  final _authVM = AuthServices();
  late final StreamSubscription _authSub;
  AuthModel? _user;
  AuthModel? get user => _user;

  String? _error;
  String? get error => _error;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  AuthViewModel() {
    _authSub = _authVM.user.listen((userModel) {
      _user = userModel;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _authSub.cancel();
    super.dispose();
  }

  Future<void> signIn(String email, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      final result = await _authVM.signIn(email, password);
      if (result == null) _error = "No User Exist";
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signUp(String email, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      final result = await _authVM.signup(email, password);
      if (result == null) _error = "No User Exist";
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      await _authVM.signOut();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> forgetPassword(String email) async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      await _authVM.forgetPassword(email);
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}