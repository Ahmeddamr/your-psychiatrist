import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/features/forget_password/Reset%20password.dart';
import '../login/login_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

     appBar:  AppBar(
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
          "Forgot Password",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF27387B),
            shadows: [
              Shadow(
                  color:Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 3.0,
                  offset: Offset(0.0, 3.0)
              )
            ],),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mail Address Here',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
              color: Color.fromRGBO(39, 56, 123, 1),
              shadows: [
                Shadow(
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 4),
                ),
              ],

            ),),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter the email address associated \nwith your account',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: Color.fromRGBO(162, 169, 198, 1),

            ),
            textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onFieldSubmitted: (value){
                print(value);
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText:'Email',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(133, 117, 117, 0.67),
                ),
                prefixIcon:Icon(Icons.email_outlined,
                  color: Color.fromRGBO(160, 162, 217, 1),
                ),

              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                LoginScreen();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
              },
              style:ElevatedButton.styleFrom(
                fixedSize: Size(204, 44),
                backgroundColor:Color.fromRGBO(40, 55, 125, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19.0),
                ),
                shadowColor:Color.fromRGBO(0, 0, 0, 0.25),
                elevation: 7,
              ),
              child: Text(
                'Send',
                style:TextStyle(
                    color: Color.fromRGBO(218, 219, 250, 1),
                    fontSize: 16,
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
