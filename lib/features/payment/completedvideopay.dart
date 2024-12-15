import 'package:flutter/material.dart';

import '../booking/booking_confirmation.dart';
import 'completed_payment.dart';

class VideoPayment extends StatelessWidget {
  const VideoPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
            // Define navigation logic here
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookingConfirmation(),
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


      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/completed cancellation.png',
              width: 290,
              height: 270,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20,bottom: 20),
              child: TextFormField(
                onFieldSubmitted: (value){
                  print(value);
                },

                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText:'Email',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(165, 159, 159, 0.7),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(165, 159, 159, 0.7)
                        )
                    )

                ),

              ),
            ),
            Text('Please enter your email address to inform you with the details of the reservation ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: 'Poppins-Regular',
                  color: Color.fromRGBO(23, 38, 96, 0.6)
              ),),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>CompletedPayment()));
              },
              style:ElevatedButton.styleFrom(
                fixedSize: Size(93,31),
                backgroundColor:Color.fromRGBO(39, 56, 123, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                shadowColor:Colors.grey,
                elevation: 7,

              ) ,
              child: Text(
                'Done',
                style:TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 10,
                    fontWeight: FontWeight.w700

                )
                ,),

            ),

          ],
        ),
      ),
    );
  }
}
