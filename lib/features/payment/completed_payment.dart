
import 'package:flutter/material.dart';
import 'package:your_psychiatrist/core/routing/routes.dart';

class CompletedPayment extends StatelessWidget {
  const CompletedPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image:
              AssetImage(
                  'assets/images/completedpayment.png'
              ),
              width: 250,
              height: 250,
              fit: BoxFit.fill,

            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Payment Completed!',
              style: TextStyle(
                color: Color.fromRGBO(39, 56, 123, 1),
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 60, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(39, 56, 123, 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(Routes.homeScreen);

                },
                child: const Text(
                  "Back to home",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins-Regular'
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
