import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isObscureTextt = true;
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
          "Reset Password",
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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter New Password',
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
                'Your new password must be different'
                    '\nfrom previously used password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins-Regular',
                  color: Color.fromRGBO(162, 169, 198, 1),

                ),),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: isObscureText,
                onFieldSubmitted: (value){
                  print(value);
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText:'password ',
                  labelStyle: TextStyle(
                      color: Color.fromRGBO(133, 117, 117, 0.67),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      fontSize: 15
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscureTextt = !isObscureTextt;
                      });
                    },
                    child: Icon(
                      isObscureTextt ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),


                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: isObscureText,
                onFieldSubmitted: (value){
                  print(value);
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText:'confirm password ',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(133, 117, 117, 0.67),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins-Regular',
                    fontSize: 15
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    child: Icon(
                      isObscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),


                ),
              ),

              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
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
                  'Continue',
                  style:TextStyle(
                    fontFamily: 'Poppins-Regular',
                      color: Color.fromRGBO(218, 219, 250, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  )
                  ,),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
