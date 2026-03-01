class MedicationModel {
  final String id;
  final String name;
  final String dosage;
  final String form;
  final int frequency;
  final DateTime startDate;
  final DateTime? endDate;
  final int remainingCount;
  final String? instruction;
  final String? prescriptionPhoto;

  MedicationModel({
    required this.id,
    required this.name,
    required this.dosage,
    required this.form,
    required this.frequency,
    required this.startDate,
    this.endDate,
    required this.remainingCount,
    this.instruction,
    this.prescriptionPhoto,
  });
}
