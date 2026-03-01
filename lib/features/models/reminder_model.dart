class ReminderModel {
  final String id;
  final String medicationId;
  final DateTime time;
  final DateTime? repeat;
  final bool active;
  final int snoozeOption;

  ReminderModel({
    required this.id,
    required this.medicationId,
    required this.time,
    this.repeat,
    required this.active,
    required this.snoozeOption,
  });
}
