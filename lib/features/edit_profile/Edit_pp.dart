

import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: CircleAvatar(
                radius: 75,
                backgroundColor: Colors.black54,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(218, 219, 250, 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Text(
                "Take photo",
                style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(18, 44, 85, 0.56),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins-Regular'
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Color.fromRGBO(161, 158, 158, 0.23),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(218, 219, 250, 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Text(
                "Upload photo",
                style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(18, 44, 85, 0.56),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins-Regular'
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Color.fromRGBO(161, 158, 158, 0.23),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(218, 219, 250, 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Text(
                "Delete photo",
                style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(18, 44, 85, 0.56),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins-Regular'
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child:
              Text(
                'Save',
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w300
                )
                ,),
              style: ElevatedButton.styleFrom(
                backgroundColor:Color.fromRGBO(39, 56, 123, 1),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )





          ],
        ),
      ),
    );
  }
}
