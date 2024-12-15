

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/features/booking/book.dart';
import '../booking/booking_confirmation.dart';

class SessionType extends StatelessWidget {
  const SessionType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 70.0,
        left: 20),
        child: Column(
          children: [
            Text('Please Select session type & time'
                ' to complete booking process',
              style:TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color:Color.fromRGBO(39, 56, 123, 1),
              ),),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose session time ',
                  style:TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w300,
                    color:Color.fromRGBO(39, 56, 123, 1),
                  ),),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child:
                        Text(
                            'From 10:00 AM to 12:00 PM',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 13,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w300
                        )
                          ,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(39, 56, 123, 1),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child:
                        Text(
                          'From 10:00 AM to 12:00 PM',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 13,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w300
                          )
                          ,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(39, 56, 123, 1),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose session time ',
                  style:TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w300,
                    color:Color.fromRGBO(39, 56, 123, 1),
                  ),),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child:
                        Text(
                          'From 10:00 AM to 12:00 PM',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 13,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w300
                          )
                          ,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(39, 56, 123, 1),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child:
                        Text(
                          'From 10:00 AM to 12:00 PM',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 13,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w300
                          )
                          ,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(39, 56, 123, 1),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image:
                  AssetImage(
                      'assets/images/SessionType.png'
                  ),
                  width: 145,
                  height: 183,
                  fit: BoxFit.fitWidth,

                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          color: Colors.grey,
                          offset: Offset(0, 4)
                      )
                    ],
                  ),
                  child:GestureDetector(
                    onTap: () {
                      // Define navigation logic here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Booking(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(39, 56, 123, 1),
                      radius: 30,
                      child: Text(
                        'Next >>',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                            color: Colors.white

                        ),
                      ),
                    ),
                  ),

                ),

              ],
            )
          ],
        ),
      )

    );
  }
}
