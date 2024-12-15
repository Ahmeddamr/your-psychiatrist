import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoForIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.keyboard_double_arrow_right_rounded,
        size: 25.sp,
        color: Color.fromRGBO(39, 56, 123, 1),
        shadows: [
          Shadow(
            blurRadius: 3.0,
            color: Colors.black38,
            offset: Offset(0, 2),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
