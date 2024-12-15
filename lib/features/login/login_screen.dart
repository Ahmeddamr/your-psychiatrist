import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/widgets/go_back_icon_button.dart';
import 'package:your_psychiatrist/features/login/widgets/login_form.dart';
import 'package:your_psychiatrist/features/login/widgets/login_text_and_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GoBackIconButton(),
              verticalSpace(10),
              LoginTextAndImage(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
