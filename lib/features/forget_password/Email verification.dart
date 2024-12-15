import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading:GestureDetector(
          onTap: () {
            // Define navigation logic here
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          child:  Icon(
            Icons.keyboard_double_arrow_left_rounded,
            size: 30,
            color: Color.fromRGBO(39, 56, 123, 1),
            shadows: [
              Shadow(
                  color:Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 4.0,
                  offset: Offset(0.0, 4.0))
            ],
          ),


        ) ,
        title: const Text(
          "Email Verification",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(7, 11, 109, 0.79),
            shadows: [
              Shadow(
                  color:Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 5.0,
                  offset: Offset(0.0, 2.0)
              )
            ],),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:150.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Get Your Code',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: Color.fromRGBO(39, 56, 123, 1),
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0,3),
                  ),
                ],

              ),),
            SizedBox(
              height: 20,
            ),
            Text('Please enter the 4 digits that send to '
                'your email address',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(162, 169, 198, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins-Regular',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 35),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(223, 223, 248, 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 35),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(223, 223, 248, 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 35),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(223, 223, 248, 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 35),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(223, 223, 248, 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('if you cant receive code ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(162, 169, 198, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
                Text(
                  'Resend',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(30, 34, 165, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 50, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(40, 55, 125, 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Text(
                "Verify and Proceed",
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(218, 219, 250, 1),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins'
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
