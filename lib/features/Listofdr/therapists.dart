import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Dr_profile/Doctor_profile.dart';
import '../Patient_profile/patient_profile.dart';
import '../home/home_screen.dart';

class TherapistsPage extends StatefulWidget {
  @override
  State<TherapistsPage> createState() => _TherapistsPageState();
}

class _TherapistsPageState extends State<TherapistsPage> {
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    // Navigate to the corresponding page based on the index
    switch (index) {
      case 0:
        // Navigate to Home Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        // Navigate to Therapist Page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TherapistsPage()),
        );
        break;
      case 2:
        // Navigate to Profile Page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Our Therapists',
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                      color: Color(0x42000000),
                                      blurRadius: 3.0,
                                      offset: Offset(0.0, 3.0))
                                ],
                                color: Color(0xFF27387B),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Get matched with the most suitable \ntherapist for you',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xFF27387b),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF364379),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr . Sally El Sheikh.webp',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DoctorProfile(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Dr. Sally El Sheikh',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                      decorationThickness: 2),
                                ),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '800 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Address : 19 Mossadak'
                                'Ad Doqi, Dokki,\nGiza Governorat ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF8A9DE7),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF8A9DE7),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFDADBFA),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr. Mona Reda1.jpeg',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Mona Reda',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF27387B),
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Color(0xFF27387B),
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '800 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              Text(
                                'Address : 94 El-Sayed El-Marghany \nHeliopolis Cairo, Egypt ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF27387B),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF27387B),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF364379),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/dr ahmed wael.jpg',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Ahmed Wael ',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '500 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Address : Heliopolis : Botrous \nGhaly St.',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF8A9DE7),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF8A9DE7),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFDADBFA),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr. Hesham Tharwat.webp',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Hesham Tharwat',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF27387B),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFF27387B),
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Color(0xFF27387B),
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '800 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              Text(
                                'Address: Care Clinic 53 Al Maqreezy \nSt, off Al Khalifa Al Maamon\n st,Heliopolis.n3rd floor ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF27387B),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF27387B),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF364379),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr. Amr Ebrahim.png',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Amr Ebrahim ',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '750 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Address : Madint Nasr, El Nasr St. ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF8A9DE7),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF8A9DE7),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFDADBFA),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr. Mona Reda1.jpeg',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Rabab El Kasry',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF27387B),
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Color(0xFF27387B),
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '350 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              Text(
                                'Address : Banha Center, Hassan \nYoussef El shediya ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF27387B),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF27387B),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF364379),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr . Sally El Sheikh.webp',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Mohamed Hussien',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '500 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Address : Abd EL mneeim Reyad,\n El Mohandseen',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF8A9DE7),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF8A9DE7),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFDADBFA),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr. Mona Reda1.jpeg',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Peter Victor',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF27387B),
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Color(0xFF27387B),
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '700 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              Text(
                                'Address : Al Khalifa Al Maamon\n, Heliopolis.',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF27387B),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF27387B),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF364379),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/dr ahmed wael.jpg',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Nasser El Maghreby',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '400 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Address : Misr w El Sodan St. \n, Hadaek El koba',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF8A9DE7),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF8A9DE7),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFDADBFA),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr. Hesham Tharwat.webp',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DoctorProfile(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Dr. Amgad Khairy Kamel',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27387B),
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xFF27387B),
                                      decorationThickness: 2),
                                ),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Color(0xFF27387B),
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '600 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              Text(
                                'Address : Al Khalifa Al Maamon,\n Heliopolis. ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF27387B),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF27387B),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF364379),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr . Sally El Sheikh.webp',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Sally El Sheikh',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '800 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Address : 19 Mossadak'
                                'Ad Doqi, Dokki,\nGiza Governorat ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF8A9DE7),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF8A9DE7),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFDADBFA),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/Dr. Mona Reda1.jpeg',
                              width: 92,
                              height: 95,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Mona Reda',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF27387B),
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2),
                              ),
                              Text(
                                'Psychiatrist',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF8A9DE7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      color: Color(0xFF27387B),
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xFF27387B),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                '800 EGP',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              Text(
                                'Address : 94 El-Sayed El-Marghany \nHeliopolis Cairo, Egypt ',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Color(0xFF27387B),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF27387B),
                                    size: 16,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Available feb 12, at 11:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF27387B),
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(23, 38, 96, 1),
        selectedItemColor: Color.fromRGBO(39, 56, 123, 1),
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Therapist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
