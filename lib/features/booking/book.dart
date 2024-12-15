import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/features/booking/booking_confirmation.dart';
import '../Session_type/Session_type.dart';
class Booking extends StatelessWidget {
  const Booking ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
            // Define navigation logic here
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SessionType(),
              ),
            );
          },
          child:   Icon(
            Icons.keyboard_double_arrow_left_rounded,
            size: 50,
            color:Color.fromRGBO(39, 56, 123, 1),
            shadows: [
              Shadow(
                  color:Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 3.0,
                  offset: Offset(0.0, 3.0))
            ],
          ),
        ) ,
        title: Text(
          'Booking Confirmation',
          style: TextStyle(
            color: Color.fromRGBO(39, 56, 123, 1),
            shadows: [
              Shadow(
                  color:Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 7.0,
                  offset: Offset(0.0, 3.0)
              )
            ],
          ),

        ),


      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: Divider(

                  color:Color.fromRGBO(23, 38, 96, 1),
                  thickness: 3,

                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 120,
                child: Divider(
                  color:Color.fromRGBO(23, 38, 96, 0.4),
                  thickness: 3,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Booking Details',
            textAlign: TextAlign.center,
            style:TextStyle(
                fontSize: 10,
                fontFamily: 'Poppins-Regular',
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(39, 56, 123, 1)
            ),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(

              decoration: BoxDecoration(
                color: Color.fromRGBO(218, 219, 250, 1),
                borderRadius: BorderRadius.all(Radius.circular(20)

                ),

              ),
              child:Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image(
                          image:
                          AssetImage(
                              'assets/images/Dr. Hesham Tharwat.webp'
                          ),
                          width: 45,
                          height: 43,
                          fit: BoxFit.fitWidth,

                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Amgad Khairy Kamel',
                              style: TextStyle(
                                color: Color.fromRGBO(39, 56, 123, 1),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Consultant psychiatrist ',
                              style: TextStyle(
                                color: Color.fromRGBO(39, 56, 123, 0.7),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-Regular',
                                fontSize: 7,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Wednesday, Dec 9, 2024',
                              style: TextStyle(
                                color: Color.fromRGBO(39, 56, 123, 1),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-Regular',
                                fontSize: 9,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '2 - hrs',
                              style: TextStyle(
                                color: Color.fromRGBO(39, 56, 123, 1),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins-Regular',
                                fontSize:6,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'One-to-one session',
                              style: TextStyle(
                                color: Color.fromRGBO(39, 56, 123, 1),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins-Regular',
                                fontSize:6,
                              ),
                            ),
                            Text(
                              'From 2.00 pm to 4.00 pm',
                              style: TextStyle(
                                color: Color.fromRGBO(39, 56, 123, 1),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins-Regular',
                                fontSize:6,
                              ),
                            ),


                          ],
                        )


                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Color.fromRGBO(23, 38, 96, 0.4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Session Fees',
                          style: TextStyle(
                            color: Color.fromRGBO(39, 56, 123, 1),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins-Regular',
                            fontSize:9,

                          ),),
                        Text(
                          '600',
                          style: TextStyle(
                            color: Color.fromRGBO(39, 56, 123, 1),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins-Regular',
                            fontSize:9,

                          ),),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Add promo code',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromRGBO(39, 56, 123, 0.41),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins-Regular'
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              child: Divider(
                                color: Color.fromRGBO(23, 38, 96, 0.4),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child:
                          Text(
                            'Apply',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 8,
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
                        )

                      ],
                    )




                  ],
                ),
              ) ,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Color.fromRGBO(39, 56, 123, 1),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins-Regular',
                    fontSize: 13,
                  ),),
                Text(
                  '600 EGP',
                  style: TextStyle(
                    color: Color.fromRGBO(39, 56, 123, 1),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontSize: 13,
                  ),)
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.free_cancellation_outlined,
                      size: 20,
                      color: Color.fromRGBO(162, 169, 198, 1),

                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Cancellation Policy',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Poppins_Regular',
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(39, 56, 123, 1),
                      )
                      ,),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    '• 100% refund if cancellation or rescheduling is more than 24 hours before the session.'
                        '\n•50% refund if cancellation or rescheduling is between 6-24 hours before the session.'
                        '\n•No refund if cancellation or rescheduling is less than 6 hours before the session. ',
                    style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontSize: 12,
                      color: Color.fromRGBO(39, 56, 123, 0.7),

                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline_outlined,
                size: 50,
                color: Color.fromRGBO(39, 56, 123, 0.7),

              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Your information is yours and yours only',
                style: TextStyle(
                  fontSize: 9,
                  fontFamily: 'Poppins_Regular',
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(39, 56, 123, 0.7),
                )
                ,),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookingConfirmation()));

            },
            child: Text('Proceed to payment'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor:Color.fromRGBO(39, 56, 123, 1),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
