import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Text(
            number,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
