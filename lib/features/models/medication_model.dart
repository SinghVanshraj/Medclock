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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'dosage': dosage,
      'form': form,
      'frequency': frequency,
      'startDate': startDate,
      'remainingCount': remainingCount,
    };
  }

  factory MedicationModel.fromJson(Map<String, dynamic> json) {
    return MedicationModel(
      id: json['id'],
      name: json['name'],
      dosage: json['dosage'],
      form: json['form'],
      frequency: json['frequency'],
      startDate: json['startDate'],
      remainingCount: json['remainingCount'],
    );
  }
}
