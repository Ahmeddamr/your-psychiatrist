import 'package:flutter/material.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/widgets/go_back_icon_button.dart';
import 'package:your_psychiatrist/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:your_psychiatrist/features/sign_up/ui/widgets/sign_up_text_and_image.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              SignUpTextAndImage(),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
