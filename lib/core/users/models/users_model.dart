class User {
  final String name;
  final String document;
  final String gender;
  final String address;
  final String imageUrl;
  final DateTime birthdate;
  final Medication medication;

  User({
    required this.name,
    required this.document,
    required this.gender,
    required this.address,
    required this.imageUrl,
    required this.birthdate,
    required this.medication,
  });
}

class Medication {
  final String name;
  final String dosage;

  Medication({required this.name, required this.dosage});
}
