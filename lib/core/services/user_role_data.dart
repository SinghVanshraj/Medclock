import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:medclock/core/services/fire_base_services.dart';
import 'package:medclock/features/models/user_role_data_model.dart';

class UserRoleData {
  final _firestore = FireBaseServices.firestore;

  UserRoleDataModel? _dataModel(DocumentSnapshot doc) {
    if (!doc.exists) return null;

    final data = doc.data() as Map<String, dynamic>?;

    if (data == null) return null;

    return UserRoleDataModel.fromJson(data);
  }

  Future<UserRoleDataModel?> addUserRole({
    required String userId,
    required String email,
    required String role,
  }) async {
    try {
      final docRef = _firestore.collection("usersRoleData").doc(userId);

      final userData = {'email': email, 'role': role};

      await docRef.set(userData);

      final doc = await docRef.get();

      return _dataModel(doc);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<UserRoleDataModel?> getUserRole(String userId) async {
    try {
      final doc = await _firestore
          .collection('usersRoleData')
          .doc(userId)
          .get();

      return _dataModel(doc);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
