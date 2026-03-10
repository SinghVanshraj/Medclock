class UsersModel {
  final String id;
  final String email;
  final String role;
  final String timeZone;
  final String? profileImageUrl;
  final List<String> patientIds;

  UsersModel({
    required this.id,
    required this.email,
    required this.role,
    required this.timeZone,
    this.profileImageUrl,
    this.patientIds = const [],
  });
}
