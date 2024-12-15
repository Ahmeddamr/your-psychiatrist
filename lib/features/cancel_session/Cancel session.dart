import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Completed_cancellation.dart';

class CancelSession extends StatelessWidget {
  const CancelSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Are you sure that you want to Cancel session?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                color:Color.fromRGBO(39, 56, 123, 1),
              ),
            ),
            SizedBox(
                height: 90.0
            ),
            Row(
              children: [
                Text(
                  'Please know our Cancellation Policy',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(39, 56, 123, 1),
                    fontFamily:'Poppins'
                  ),
                ),
                Image.asset(
                  'assets/images/cancel.png',
                  width: 80,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Container(
              width: 325,
              height: 280,
              decoration: BoxDecoration(
                color: Color.fromRGBO(231, 231, 252, 0.4),
                borderRadius: BorderRadius.circular(30),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text(
                    '• 100% refund if cancellation or '
                        '\nrescheduling is more than 24 hours '
                        '\nbefore the session.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(39, 56, 123, 0.7),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '  • 50% refund if cancellation or'
                        ' \n  rescheduling is between 6-24 hours'
                        ' \n  before the session.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(39, 56, 123, 0.7),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '• No refund if cancellation or '
                        '\n rescheduling is less than 6 hours '
                        '\n before the session.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(39, 56, 123, 0.7),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
             mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
                builder: (context) => CompletedCancellation(),
              ),
            );
          },
                 child: CircleAvatar(
            backgroundColor: Color.fromRGBO(39, 56, 123, 1),
            radius: 30,
            child: Text(
              'Continue >>',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 7,
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
      ),
    );
  }
}
