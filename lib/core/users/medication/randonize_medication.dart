import 'dart:math';

import 'package:ecpf/core/users/models/users_model.dart';

class RandonizeMedication{
  Medication getRandomMedication() {
    final random = Random();
    final medications = [
        Medication(name: 'Isotretinoína', dosage: '20 mg'),
        Medication(name: 'Cabergolina', dosage: '0,5 mg'),
        Medication(name: 'Lanreotida', dosage: '90 mg'),
        Medication(name: 'Lanreotida', dosage: '120 mg'),
        Medication(name: 'Octreotida', dosage: '10 mg/ml injetável'),
        Medication(name: 'Ciclofosfamida', dosage: '50 mg'),
        Medication(name: 'Alfaepoetina', dosage: '10.000 UI injetável'),
        Medication(name: 'Cinacalcete', dosage: '30 mg'),
        Medication(name: 'Adalimumabe', dosage: '40 mg'),
        Medication(name: 'Tocilizumabe', dosage: '20 mg/ml'),
        Medication(name: 'Baricitinibe', dosage: '4 mg'),
        Medication(name: 'Nusinersena', dosage: '2,4 mg/ml'),
        Medication(name: 'Aflibercepte', dosage: '40 mg/ml'),
        Medication(name: 'Hidroxicloroquina', dosage: '400 mg'),
        Medication(name: 'Desmopressina', dosage: '0,1 mg/ml'),
    ];

    final randomIndex = random.nextInt(medications.length);
    return medications[randomIndex];
    }
}