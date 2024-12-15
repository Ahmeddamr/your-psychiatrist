import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/features/booking/Booking_Details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27387B),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 110.0,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 130.0, left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '| Bio',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                  color: Color.fromRGBO(73, 82, 154, 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            '• Consultant psychiatrist and professor of behavioral sciences at the American University.'
                            '\n• Consultant to Caritas for psychological rehabilitation and addiction treatment',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              color: Color.fromRGBO(39, 56, 123, 0.7),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.people,
                                size: 20,
                                color: Color.fromRGBO(23, 38, 96, 1),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '| Work with',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                  color: Color.fromRGBO(73, 82, 154, 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '• Family'
                            '\n• Children'
                            '\n• Adults',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              color: Color.fromRGBO(39, 56, 123, 0.7),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Color.fromRGBO(161, 158, 158, 0.23),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reservation Information',
                            style: TextStyle(
                                color: Color.fromRGBO(73, 82, 154, 1),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.payments_outlined,
                                    size: 20,
                                    color: Color.fromRGBO(23, 38, 96, 1),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '600 EGP ',
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Poppins-Regular',
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(39, 56, 123, 0.7),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.stars_rounded,
                                    size: 20,
                                    color: Color.fromRGBO(23, 38, 96, 1),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'You will get 600 points',
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Poppins-Regular',
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(39, 56, 123, 0.7),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.timelapse,
                                    size: 20,
                                    color: Color.fromRGBO(23, 38, 96, 1),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Max session Time: 2 hrs',
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Poppins-Regular',
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(39, 56, 123, 0.7),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Color.fromRGBO(161, 158, 158, 0.23),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: Color.fromRGBO(23, 38, 96, 1),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Al Khalifa Al Maamon, Heliopolis',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(73, 82, 154, 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Book now and we will send you the full address details and the clinic number',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 11,
                              color: Color.fromRGBO(73, 82, 154, 1),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Color.fromRGBO(161, 158, 158, 0.23),
                      ),
                      Column(
                        children: [
                          Text('Choose the appropriate booking time for you',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(73, 82, 154, 1),
                              )),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    width: 150,
                                    height: 212,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                      color: Color(0xFF49529A),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 10),
                                          Text(
                                            'Wednesday, Dec 9 ',
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '• From 10:00 AM to 12:00 PM',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '• From 10:00 AM to 12:00 PM',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            ' • From 10:00 AM to 12:00 PM',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BookingDetails()));
                                            },
                                            child: Text('Book'),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              backgroundColor: Color.fromRGBO(
                                                  115, 223, 126, 1),
                                              elevation: 4,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    width: 150,
                                    height: 212,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                      color: Color(0xFF49529A),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 10),
                                          Text(
                                            'Wednesday, Dec 9 ',
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '• From 10:00 AM to 12:00 PM',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '• From 10:00 AM to 12:00 PM',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            ' • From 10:00 AM to 12:00 PM',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BookingDetails()));
                                            },
                                            child: Text('Book'),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              backgroundColor: Color.fromRGBO(
                                                  115, 223, 126, 1),
                                              elevation: 4,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.push_pin,
                                size: 20,
                                color: Color.fromRGBO(23, 38, 96, 1),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Booking in advance and entry is first come first served',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(73, 82, 154, 1),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Color.fromRGBO(161, 158, 158, 0.23),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'More about me',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              color: Color.fromRGBO(73, 82, 154, 1),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Professor of Behavioral Sciences at the American University and member of the American Psychiatric Association - Advisor to Caritas for Psychosocial Rehabilitation and Addiction Treatment / Psychological Guidance and Family Counseling Unit and Member of the American Psychiatric Association',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              color: Color.fromRGBO(39, 56, 123, 0.7),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.black45,
                    ),
                    Column(
                      children: [
                        Text(
                          'Dr. Amgad Khairy ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color.fromRGBO(39, 56, 123, 1),
                          ),
                        ),
                        Text(
                          'Consultant psychiatrist',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: Color.fromRGBO(54, 67, 121, 0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void bookAppointment(String doctorName, String date, String time) {
  // Reference to the "Appointments" collection in Firestore
  CollectionReference appointments =
      FirebaseFirestore.instance.collection('Appointments');

  // Add a new document with a generated ID
  appointments.add({
    'doctorName': doctorName,
    'date': date,
    'time': time,
  }).then((value) {
    print("Appointment booked successfully!");
  }).catchError((error) {
    print("Failed to book appointment: $error");
  });
}
