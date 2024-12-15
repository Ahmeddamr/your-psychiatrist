import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/routing/routes.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/core/widgets/go_for_icon_button.dart';
import 'package:your_psychiatrist/features/home/widgets/adult_therapy_card.dart';
import 'package:your_psychiatrist/features/home/widgets/children_therapy_card.dart';
import 'package:your_psychiatrist/features/home/widgets/therapist_showcase_card.dart';

import '../../core/widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome To InnerHeal !',
                  style: TextStyles.font16BlueMidnightPoppins,
                ),
                verticalSpace(20),
                Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).pushNamed(Routes.awarenessScreen);
                      },
                      child: Text(
                        'How to Better your Mental Health',
                        style: TextStyles.font16BlueMidnightPoppins,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GoForIconButton(),
                  ],
                ),
                Text(
                  'We all want to be our best self. What do you do every day for your Mental Health?',
                  style: TextStyles.font9darkSapphireBluePoppins,
                ),
                verticalSpace(10),
                TherapistShowcaseCard(),
                verticalSpace(30),
                Text(
                  'What is your nature or purpose?',
                  style: TextStyles.font16deepBluePoppins,
                ),
                verticalSpace(5),
                Text(
                  'According to your choice, we will determine the appropriate treatmeant method for you.',
                  style: TextStyles.font9darkSapphireBluePoppins,
                ),
                verticalSpace(30),
                AdultTherapyCard(),
                verticalSpace(10),
                ChildrenTherapyCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
