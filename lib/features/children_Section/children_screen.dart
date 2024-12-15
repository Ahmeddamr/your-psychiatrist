import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/core/routing/routes.dart';
import 'package:your_psychiatrist/features/chatbot_message/chatbot.dart';

class ChildrenScreen extends StatefulWidget {
  const ChildrenScreen({super.key});

  @override
  State<ChildrenScreen> createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
            // Define navigation logic here
            Navigator.of(context).pushNamed(Routes.homeScreen);
          },
          child: Icon(
            Icons.keyboard_double_arrow_left_rounded,
            size: 30,
            color: Color.fromRGBO(39, 56, 123, 1),
            shadows: [
              Shadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 3.0,
                  offset: Offset(0.0, 3.0))
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, Caring parents!',
                  style: TextStyle(
                    color: Color.fromRGBO(39, 56, 123, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 3.0,
                          offset: Offset(0.0, 4.0))
                    ],
                  ),
                ),
                Text(
                  'we  understand how important it is for you to stay informed about your child’s health',
                  style: TextStyle(
                    color: Color.fromRGBO(39, 56, 123, 1),
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    shadows: [
                      Shadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 3.0,
                          offset: Offset(0.0, 4.0))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Image(
            image: AssetImage('assets/images/children.png'),
            alignment: Alignment(10, 0),
            width: 180,
            height: 130,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "1. Gain insights into your child's health \n   effortlessly",
            style: TextStyle(
              color: Color.fromRGBO(39, 56, 123, 1),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 3.0,
                    offset: Offset(0.0, 4.0))
              ],
            ),
          ),
          Row(
            children: [
              Image(
                image: AssetImage('assets/images/children2.png'),
                width: 73,
                height: 60,
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "Start a conversation with our chatbot to receive personalized "
            "guidance, ask questions about your child's symptoms, and "
            "assign you with suitable therapists. ",
            style: TextStyle(
              color: Color.fromRGBO(39, 56, 123, 1),
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => chatPage()));
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(220, 37),
              backgroundColor: Color.fromRGBO(23, 38, 96, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19.0),
              ),
              shadowColor: Colors.grey,
              elevation: 7,
            ),
            child: Text(
              'Get Started',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.92),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              "2. Already familiar with your child’s illness?",
              style: TextStyle(
                color: Color.fromRGBO(39, 56, 123, 1),
                fontSize: 16,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 3.0,
                      offset: Offset(0.0, 4.0))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(39, 56, 123, 0.7),
              ),
              children: [
                TextSpan(
                  text:
                      'To select the illness or symptoms that your child \ncurrently experiencing  ',
                ),
                TextSpan(
                  text: 'Click here',
                  style: TextStyle(
                      color: Color.fromRGBO(39, 56, 123, 0.7),
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      fontSize: 12),
                  mouseCursor: SystemMouseCursors.precise,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/children5.png'),
                  width: 220,
                  height: 140,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
