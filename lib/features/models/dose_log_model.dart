class DoseLogModel {
  final String id;
  final String medicationId;
  final DateTime scheduleTime;
  final DateTime? takenTime;
  final String status;

  DoseLogModel({
    required this.id,
    required this.medicationId,
    required this.scheduleTime,
    this.takenTime,
    required this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'medicationId': medicationId,
      'scheduleTime': scheduleTime,
      'status': status,
    };
  }

  factory DoseLogModel.fromJson(Map<String, dynamic> json) {
    return DoseLogModel(
      id: json['id'],
      medicationId: json['medicationId'],
      scheduleTime: json['scheduleTime'],
      status: json['status'],
    );
  }
}
