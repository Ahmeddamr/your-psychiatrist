
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_psychiatrist/features/payment/completedvideopay.dart';
import 'Booking_Details.dart';

class BookingConfirmation extends StatelessWidget {
  const BookingConfirmation({super.key});

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
                builder: (context) => BookingDetails(),
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
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: Divider(
                  color:Color.fromRGBO(23, 38, 96, 1),
                  thickness: 3,

                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 100,
                child: Divider(
                  color:Color.fromRGBO(23, 38, 96, 1),
                  thickness: 3,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'Payment Details',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins-Regular',
              color:Color.fromRGBO(39, 56, 123, 1),
            ),


          ),
          SizedBox(
            height: 20,
          ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Color.fromRGBO(39, 56, 123, 1),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins-Regular',
                            fontSize: 11,
                          ),),
                        Text(
                          '600 EGP',
                          style: TextStyle(
                            color: Color.fromRGBO(39, 56, 123, 1),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins-Regular',
                            fontSize: 11,
                          ),)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Color.fromRGBO(23, 38, 96, 0.09),
                    ),
                    Text(
                      'Card details',
                      style: TextStyle(
                        color: Color.fromRGBO(39, 56, 123, 1),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Regular',
                        fontSize:13,

                      ),),

                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bank Card Number',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromRGBO(39, 56, 123, 0.41),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins-Regular'
                              ),
                            ),
                            SizedBox(
                              width: 295,
                              child: Divider(
                                color: Color.fromRGBO(23, 38, 96, 0.4),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expiry Date',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromRGBO(39, 56, 123, 0.41),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins-Regular'
                              ),
                            ),
                            SizedBox(
                              width: 140,
                              child: Divider(
                                color: Color.fromRGBO(23, 38, 96, 0.4),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CVV',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromRGBO(39, 56, 123, 0.41),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins-Regular'
                              ),
                            ),
                            SizedBox(
                              width: 140,
                              child: Divider(
                                color: Color.fromRGBO(23, 38, 96, 0.4),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.toggle_off,
                          size: 30,
                          color: Color.fromRGBO(165, 159, 159, 0.62),

                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Save card?',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins_Regular',
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(39, 56, 123, 1),
                          )
                          ,),
                      ],
                    )






                  ],
                ),
              ) ,
            ),
          ),
          SizedBox(
            height: 80,
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => VideoPayment()));
              },
            child: Text('Pay Now'),
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
      )
    );
  }
}
