import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:your_psychiatrist/core/helpers/form_validator.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/core/widgets/app_text_button.dart';
import 'package:your_psychiatrist/core/widgets/app_text_form_field.dart';
import '../../../core/routing/routes.dart';
import '../../user_auth/auth_exception_handler.dart';
import '../../user_auth/auth_status_enum.dart';
import '../../user_auth/firebase_auth_helper.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 555.h,
      decoration: BoxDecoration(
        color: ColorsManager.mainBlue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          topLeft: Radius.circular(60),
        ),
      ),
      child: Column(
        children: [
          verticalSpace(25),
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  verticalSpace(50),
                  AppTextFormField(
                    validator: (val) {
                      if (!val!.isValidEmail) return 'Enter valid email';
                    },
                    controller: _emailController,
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(50),
                  AppTextFormField(
                    validator: (val) {
                      if (!val!.isValidPassword) return 'Enter valid password';
                    },
                    controller: _passwordController,
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    isObscureText: isObscureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscureText = !isObscureText;
                        });
                      },
                      child: Icon(
                        isObscureText ? Icons.visibility_off : Icons.visibility,
                        color: ColorsManager.formIconsColor,
                      ),
                    ),
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(20),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: GestureDetector(
                      onTap: () {
                        // Implement forgot password functionality
                      },
                      child: Text(
                        'Forget Password ?',
                        style: TextStyles.font10WhitePoppins,
                      ),
                    ),
                  ),
                  verticalSpace(100),
                  AppTextButton(
                    buttonWidth: 200,
                    buttonHeight: 55,
                    buttonText: 'Log In',
                    textStyle: TextStyles.font16BlueMidnightPoppins,
                    onPressed: _handleLogin,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();
      try {
        final status =
            await FirebaseAuthHelper().login(email: email, pass: password);
        if (status == AuthResultStatus.successful) {
          // Navigate to success page
          Navigator.of(context).pushReplacementNamed(Routes.homeScreen);
        } else {
          final errorMsg =
              AuthExceptionHandler.generateExceptionMessage(status);
          _showAlertDialog(errorMsg);
        }
      } catch (e) {
        print('Exception occurred during login: $e');
        _showAlertDialog('An error occurred during login');
      }
    }
  }

  void _showAlertDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
