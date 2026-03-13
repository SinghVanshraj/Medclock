import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:medclock/core/services/fire_base_services.dart';
import 'package:medclock/features/models/patient_model.dart';

class PatientDataBase {
  final _firestore = FireBaseServices.firestore;

  Future<PatientModel?> _patientFromFirebase(DocumentSnapshot doc) async {
    if (!doc.exists) return null;

    final data = doc.data() as Map<String, dynamic>?;

    if (data == null) return null;

    return PatientModel.fromJson(data);
  }

  Future<PatientModel?> addPatientsDb({
    required String uid,
    required String name,
    required String email,
    required String phone,
    required int age,
    required String gender,
    String caregiverId = "",
  }) async {
    try {
      final docRef = _firestore.collection("patient").doc(uid);

      final dataPatient = {
        'uid': uid,
        'name': name,
        'email': email,
        'phone': phone,
        'age': age,
        'gender': gender,
        'caregiverId': caregiverId,
      };

      await docRef.set(dataPatient);

      final doc = await docRef.get();

      return _patientFromFirebase(doc);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<PatientModel?> getPatientData(String userId) async {
    try {
      final docRef = await _firestore.collection('patient').doc(userId).get();

      return _patientFromFirebase(docRef);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<void> updateCareGiver(
    String userId,
    String careGiverId,
  ) async {
    try {
      await _firestore.collection('Patient').doc(userId).update({
       'caregiverId' : careGiverId
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
