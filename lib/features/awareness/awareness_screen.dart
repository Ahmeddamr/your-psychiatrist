import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/core/widgets/go_back_icon_button.dart';

class NumberedCircleAvatar extends StatelessWidget {
  final String number;
  final Color backgroundColor;
  final Color foregroundColor;

  const NumberedCircleAvatar({
    required this.number,
    this.backgroundColor = const Color.fromRGBO(39, 56, 123, 0.91),
    this.foregroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey,
            spreadRadius: 3,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            number,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class AwarenessScreen extends StatefulWidget {
  const AwarenessScreen({Key? key}) : super(key: key);

  @override
  State<AwarenessScreen> createState() => _AwarenessScreenState();
}

class _AwarenessScreenState extends State<AwarenessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GoBackIconButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(10),
            Text(
              'How to Better your Mental Health',
              style: TextStyles.font18mainBluePoppinsShadow,
            ),
            verticalSpace(10),
            ListTile(
              title: Row(
                children: [
                  NumberedCircleAvatar(number: "1"),
                  horizontalSpace(20),
                  Text(
                    "DON'T STRUGGLE ALONE  ",
                    style: TextStyles.font16mainBluePoppinsshadow,
                  ),
                  Image(
                    image: AssetImage("assets/images/a1.png"),
                    width: 60.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 55.0.w),
                child: Text(
                  "If you are experiencing negative feelings you're not familiar with & have become a common occurrence, seek help from family, friends, or a trusted therapist immediately.",
                  style: TextStyles.font9darkSapphireBluePoppins,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage(
                  "assets/images/a2.png",
                ),
                width: 52.w,
                height: 92.h,
                fit: BoxFit.cover,
              ),
              title: Row(
                children: [
                  NumberedCircleAvatar(number: "2"),
                  horizontalSpace(20),
                  Text(
                    "EXERCISE",
                    style: TextStyles.font16mainBluePoppinsshadow,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(
                  left: 55.0.w,
                ),
                child: Text(
                  "Yoga. Pilates. HIIT. Boxing. Swimming. Hiking. Bicycling Crossfit. There is tons of different ways to get active.When you exercise your body releases these fabulous chemicals called endorphins",
                  style: TextStyles.font9darkSapphireBluePoppins,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  NumberedCircleAvatar(number: "3"),
                  horizontalSpace(20),
                  Text(
                    "GET OUTSIDE",
                    style: TextStyles.font16mainBluePoppinsshadow,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(
                  left: 20.0.w,
                  top: 10.h,
                ),
                child: Text(
                  "Try going outside and leave your phone at home.You'll be less inclined to snap the 'perfect pic for the gram' and instead, be more present. As fractal patterns ease your worries away.",
                  style: TextStyles.font9darkSapphireBluePoppins,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage(
                  "assets/images/a4.png",
                ),
                width: 80.w,
                height: 70.h,
                fit: BoxFit.cover,
              ),
              title: Row(
                children: [
                  NumberedCircleAvatar(number: "4"),
                  horizontalSpace(20),
                  Text(
                    "MEDITATE",
                    style: TextStyles.font16mainBluePoppinsshadow,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(
                  left: 10.0.w,
                  top: 10.h,
                ),
                child: Text(
                  "As we're constantly busy beeing around today, it's so important to let our mind slow down for a few moments every day. If sitting alone with your thoughts with a timer on seems too daunting, try guided meditation. It's a brilliant way to easeinto meditation.",
                  style: TextStyles.font9darkSapphireBluePoppins,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  NumberedCircleAvatar(number: "5"),
                  horizontalSpace(20),
                  Text(
                    "LIMIT SCREEN TIME",
                    style: TextStyles.font16mainBluePoppinsshadow,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  "If you are experiencing negative feelings you're not familiar with & have become a common occurrence,I'would recommend seeking help from family, friends,or a trusted therapist immediately.",
                  style: TextStyles.font9darkSapphireBluePoppins,
                  textAlign: TextAlign.center,
                ),
              ),
              trailing: Image(
                image: AssetImage("assets/images/a5.png"),
                width: 60.w,
                height: 64.h,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage(
                  "assets/images/a6.png",
                ),
                width: 65.w,
                height: 65.h,
                fit: BoxFit.cover,
              ),
              title: Row(
                children: [
                  NumberedCircleAvatar(number: "6"),
                  horizontalSpace(20),
                  Text(
                    "SLEEP",
                    style: TextStyles.font16mainBluePoppinsshadow,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(
                  left: 47.0.w,
                ),
                child: Text(
                  "If you try to reduce your time spent on your devices, you'll quickly discover how many fantastic things you can do that are not technology related.",
                  style: TextStyles.font9darkSapphireBluePoppins,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  NumberedCircleAvatar(number: "7"),
                  horizontalSpace(20),
                  Text(
                    "EAT WELL",
                    style: TextStyles.font16mainBluePoppinsshadow,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 55.0.w),
                child: Text(
                  "Remember, you are what you eat. Neither your body nor your brain want to run on overly processed junk.",
                  style: TextStyles.font9darkSapphireBluePoppins,
                  textAlign: TextAlign.center,
                ),
              ),
              trailing: Image(
                image: AssetImage("assets/images/a7.png"),
                width: 64.w,
                height: 100.h,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
