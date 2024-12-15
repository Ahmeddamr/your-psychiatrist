import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../payment/payment_appointment.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? username;
  String? phone;

  @override
  void initState() {
    super.initState();
    // Fetch user information when the profile page is initialized
    fetchUserInfo();
  }

  fetchUserInfo() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      final userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser.uid)
          .get();
      setState(() {
        username = userData['username'];
        phone = userData['phone'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27387B),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 180.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 75),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              username ?? 'Loading...',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF27387B),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Gender",
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        ",Age",
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    phone ?? 'Loading...',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Diagnosis: LoremIpsum",
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    "Medications: None",
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 70, vertical: 15),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDADBFA).withOpacity(0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PatientAppointment(),
                                ),
                              );
                            },
                            child: const Text(
                              "Your Schedule",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF27387B),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "History",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) => ListTile(
                              leading: Text(
                                "FEB-$index",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              title: Text(
                                "Session $index",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
