class DoseLogModel {
  final String id;
  final String medicationId;
  final DateTime scheduleTime;
  final DateTime? takenTime;
  final int status;

  DoseLogModel({
    required this.id,
    required this.medicationId,
    required this.scheduleTime,
    this.takenTime,
    required this.status,
  });
}
