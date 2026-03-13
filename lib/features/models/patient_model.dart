class PatientModel {
  final String uid;
  final String name;
  final String email;
  final String phone;
  final int age;
  final String gender;
  final String? caregiverId;

  PatientModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.phone,
    required this.age,
    required this.gender,
    this.caregiverId,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'age': age,
      'gender': gender,
      'caregiverId': caregiverId,
    };
  }

  factory PatientModel.fromJson(Map<String, dynamic> json) {
    return PatientModel(uid: json['uid'], name: json['name'], email: json['email'], phone: json['phone'], age: json['age'], gender: json['gender']);
  }
}
