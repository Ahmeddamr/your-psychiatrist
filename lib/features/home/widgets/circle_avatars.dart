import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';

class DoctorImagesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DoctorCircle(image: AssetImage('assets/images/dr1.png')),
        horizontalSpace(5),
        DoctorCircle(image: AssetImage('assets/images/dr2.png')),
        horizontalSpace(5),
        DoctorCircle(image: AssetImage('assets/images/dr3.png')),
        horizontalSpace(5),
        DoctorCircle(image: AssetImage('assets/images/dr4.png')),
      ],
    );
  }
}

class DoctorCircle extends StatelessWidget {
  final ImageProvider image;

  const DoctorCircle({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: image,
      ),
    );
  }
}
