class CareLinkModel {
  final String id;
  final String patientId;
  final String careGiverId;
  final String permissions;

  CareLinkModel({
    required this.id,
    required this.patientId,
    required this.careGiverId,
    required this.permissions,
  });
}
