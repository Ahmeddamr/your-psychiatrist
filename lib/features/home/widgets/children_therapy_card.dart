import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/routing/routes.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';

import '../../../core/theming/styles.dart';
import '../../children_Section/children_screen.dart';

class ChildrenTherapyCard extends StatelessWidget {
  const ChildrenTherapyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Define navigation logic here
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChildrenScreen(),
            ),
          );
          // I Will Handle It Later
        },
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            height: 140.h, // Adjust the height as needed
            width: 260.w, // Adjust the width as needed
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      //alignment: Alignment(0,0),
                      'assets/images/childrenTherapy.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 8.0), // Adjust top padding as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Children Therapy',
                        style: TextStyles.font10mainBluePoppins,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: ColorsManager.mainBlue,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
