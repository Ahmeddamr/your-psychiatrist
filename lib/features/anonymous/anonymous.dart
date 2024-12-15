import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/features/sign_up/ui/sign_up_screen.dart';


class InnerHealPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0)),
          color :  Color(0xFF28377D),
        ),

              height: 379,
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 50.0
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Text(
                      'InnerHeal',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'PTSerif',
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 30.0
                  ),
                  Text(
                    'Our Conversations and sessions are private & anonymous, So for your convenience there are two options for you. Choose a nickname or register with your real data.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(132, 141, 181, 1),
                      fontFamily: 'Poppins-Regular'
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Container(
                       width: 269,
                       child:  TextFormField(
                         onFieldSubmitted: (value){
                           print(value);
                         },
                         decoration: InputDecoration(
                           labelText:'Choose a username',
                           labelStyle: TextStyle(
                             color: Color.fromRGBO(40, 55, 125, 1),
                           ),


                         ),
                       ),
                     ),


                    SizedBox(
                        height:80.0
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      style:ElevatedButton.styleFrom(
                        fixedSize: Size(269, 55),
                        backgroundColor:Color(0xFF28377D),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 10.0,
                        ), shadowColor:Colors.grey,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),

                        ),
                      ) ,

                      child: Text(
                        'Register Now',
                      style:TextStyle(
                          color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'

                      )
                        ,),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}