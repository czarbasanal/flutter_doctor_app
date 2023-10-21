class Doctor {
  final String name;
  final String specialty;
  final String rating;
  final int shadedStars;
  final String hospital;
  final int patientCount;
  final String experience;
  final String description;
  final String profilePicture;
  final bool isOpen;

  Doctor(
      {required this.name,
      required this.specialty,
      required this.rating,
      required this.shadedStars,
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
      shadedStars: 4,
      hospital: 'Persahabatan Hospital',
      patientCount: 1221,
      experience: '3',
      description:
          'is one of the best doctors in the Persahabat Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      profilePicture: 'images/Group-22.png',
      isOpen: true),
  Doctor(
      name: 'Dr. Shabil Chan',
      specialty: 'Dental',
      rating: '4.7',
      shadedStars: 4,
      hospital: 'Columbia Asia Hospital',
      patientCount: 964,
      experience: '4',
      description:
          'is one of the best doctors in the Columbia Asia Hospital. She has saved more than 900 patients in the past 4 years. She has also received many awards from domestic and abroad as the best doctors. She is available on a private or schedule.',
      profilePicture: 'images/Group-23.png',
      isOpen: true),
  Doctor(
      name: 'Dr. Mustakim',
      specialty: 'Eye',
      rating: '4.9',
      shadedStars: 5,
      hospital: 'Salemba Carolus Hospital',
      patientCount: 762,
      experience: '5',
      description:
          'is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 700 patients in the past 5 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      profilePicture: 'images/Group-24.png',
      isOpen: false),
  Doctor(
      name: 'Dr. Suprihatini',
      specialty: 'Heart',
      rating: '4.8',
      shadedStars: 4,
      hospital: 'Salemba Carolus Hospital',
      patientCount: 1451,
      experience: '6',
      description:
          'is one of the best doctors in the Salemba Carolus Hospital. She has saved more than 1400 patients in the past 6 years. She has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      profilePicture: 'images/Group-25.png',
      isOpen: false),
];

class DoctorMenu {
  final dynamic backgroundColor;
  final dynamic highlightColor;
  final dynamic icon;
  final String label;

  DoctorMenu({
    required this.backgroundColor,
    required this.highlightColor,
    required this.icon,
    required this.label,
  });
}

var doctorMenu = [
  DoctorMenu(
    backgroundColor: 0xff4485FD,
    highlightColor: 0xff639AFF,
    icon: 'images/007-stethoscope.png',
    label: 'Consultation',
  ),
  DoctorMenu(
    backgroundColor: 0xffA584FF,
    highlightColor: 0xffB79CFF,
    icon: 'images/004-teeth.png',
    label: 'Dental',
  ),
  DoctorMenu(
    backgroundColor: 0xffFF7854,
    highlightColor: 0xffFFA188,
    icon: 'images/017-heart.png',
    label: 'Heart',
  ),
  DoctorMenu(
    backgroundColor: 0xffFEA725,
    highlightColor: 0xffFFB547,
    icon: 'images/024-clinic.png',
    label: 'Hospitals',
  ),
  DoctorMenu(
    backgroundColor: 0xff00CC6A,
    highlightColor: 0xff1AD37A,
    icon: 'images/012-medicine.png',
    label: 'Medicines',
  ),
  DoctorMenu(
    backgroundColor: 0xff00C9E4,
    highlightColor: 0xff05D1ED,
    icon: 'images/013-care-2.png',
    label: 'Physician',
  ),
  DoctorMenu(
    backgroundColor: 0xffFD44B3,
    highlightColor: 0xffFF71C6,
    icon: 'images/028-bandage.png',
    label: 'Skin',
  ),
  DoctorMenu(
    backgroundColor: 0xffFD4444,
    highlightColor: 0xffFF7070,
    icon: 'images/005-syringe.png',
    label: 'Surgeon',
  ),
];
