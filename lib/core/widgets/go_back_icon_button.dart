import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoBackIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.w, 10.h, 0, 0),
      child: IconButton(
        icon: Icon(
          Icons.keyboard_double_arrow_left_rounded,
          size: 35.sp,
          color: Color.fromRGBO(39, 56, 123, 1),
          shadows: [
            Shadow(
              blurRadius: 3.0,
              color: Colors.black38,
              offset: Offset(0, 2),
            ),
          ],
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
