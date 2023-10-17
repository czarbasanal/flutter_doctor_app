class Doctor {
  final String name;
  final String specialty;
  final String rating;
  final String hospital;
  final String patientCount;
  final String experience;
  final String description;
  final String profilePicture;
  final bool isOpen;
  Doctor(
      {required this.name,
      required this.specialty,
      required this.rating,
      required this.hospital,
      required this.patientCount,
      required this.experience,
      required this.description,
      required this.profilePicture,
      required this.isOpen});
}

var topDoctors = [
  Doctor(
      name: 'Dr. Gilang Segara Bening',
      specialty: 'Heart',
      rating: '4.8',
      hospital: 'Persahabatan Hospital',
      patientCount: '1221',
      experience: '3',
      description:
          'is one of the best doctors in the Persahabat Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      profilePicture: 'images/Group-22.png',
      isOpen: true),
  Doctor(
      name: 'Dr. Shabil Chan',
      specialty: 'Dental',
      rating: '4.7',
      hospital: 'Columbia Asia Hospital',
      patientCount: '964',
      experience: '4',
      description:
          'is one of the best doctors in the Columbia Asia Hospital. He has saved more than 900 patients in the past 4 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      profilePicture: 'images/Group-23.png',
      isOpen: false),
  Doctor(
      name: 'Dr. Mustakim',
      specialty: 'Eye',
      rating: '4.9',
      hospital: 'Salemba Carolus Hospital',
      patientCount: '762',
      experience: '5',
      description:
          'is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 700 patients in the past 5 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      profilePicture: 'images/Group-24.png',
      isOpen: true),
  Doctor(
      name: 'Dr. Suprihatini',
      specialty: 'Heart',
      rating: '4.8',
      hospital: 'Salemba Carolus Hospital',
      patientCount: '1451',
      experience: '6',
      description:
          'is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 1400 patients in the past 6 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      profilePicture: 'images/Group-25.png',
      isOpen: false),
];

class DoctorMenu {
  String name;
  String image;

  DoctorMenu({this.name = '', this.image = ''});
}

var doctorMenu = [
  DoctorMenu(name: 'Consultation', image: 'img-consultation.svg'),
  DoctorMenu(name: 'Dental', image: 'img-dental.svg'),
  DoctorMenu(name: 'Heart', image: 'img-heart.svg'),
  DoctorMenu(name: 'Hospitals', image: 'img-hospital.svg'),
  DoctorMenu(name: 'Medicines', image: 'img-medicine.svg'),
  DoctorMenu(name: 'Physician', image: 'img-physician.svg'),
  DoctorMenu(name: 'Skin', image: 'img-skin.svg'),
  DoctorMenu(name: 'Surgeon', image: 'img-surgeon.svg'),
];
