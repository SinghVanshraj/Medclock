class UserRoleDataModel {
  final String email;
  final String role;

  UserRoleDataModel({required this.email, required this.role});

  Map<String, dynamic> toJson() {
    return {'email': email, 'role': role};
  }

  factory UserRoleDataModel.fromJson(Map<String, dynamic> json) {
    return UserRoleDataModel(email: json['email'], role: json['role']);
  }
}
