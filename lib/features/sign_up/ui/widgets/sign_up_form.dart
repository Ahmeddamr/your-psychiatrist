import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/extensions.dart';
import 'package:your_psychiatrist/core/helpers/form_validator.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/core/widgets/app_text_button.dart';
import 'package:your_psychiatrist/core/widgets/app_text_form_field.dart';
import 'package:your_psychiatrist/features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import '../../../../core/routing/routes.dart';
import '../../../user_auth/auth_exception_handler.dart';
import '../../../user_auth/auth_status_enum.dart';
import '../../../user_auth/firebase_auth_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:your_psychiatrist/features/user_auth/fetching_user_data/store_user_data.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FirebaseAuthService _auth = FirebaseAuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.h,
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
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r"[a-zA-Z]+|\s"),
                      )
                    ],
                    validator: (val) {
                      if (!val!.isValidName) return 'Enter valid name';
                    },
                    controller: _usernameController,
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(30),
                  AppTextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r"[0-9]"),
                      )
                    ],
                    validator: (val) {
                      if (val == null || !val.isValidPhone)
                        return 'Enter valid phone';
                    },
                    controller: _phoneController,
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    hintText: 'phone',
                    prefixIcon: Icon(
                      Icons.phone,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(30),
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
                  verticalSpace(30),
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
                      // I will add the router later
                      onTap: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                      child: Text(
                        'Already an InnerHeal user ? Login',
                        style: TextStyles.font10WhitePoppins,
                      ),
                    ),
                  ),
                  verticalSpace(50),
                  AppTextButton(
                    buttonWidth: 200,
                    buttonHeight: 55,
                    buttonText: 'Register',
                    textStyle: TextStyles.font16BlueMidnightPoppins,
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );

                        // Call _createAccount to handle the registration process
                        _createAccount();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _createAccount() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final username = _usernameController.text.trim();
    final phone = _phoneController.text.trim();

    final status =
        await FirebaseAuthHelper().createAccount(email: email, pass: password);

    if (status == AuthResultStatus.successful) {
      final firebaseUser = await FirebaseAuth.instance.currentUser;

      // Store user information (email, password, username, phone) in Firestore
      await storeNewUser(firebaseUser, email, password, username, phone);

      Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
    } else {
      final errorMsg = AuthExceptionHandler.generateExceptionMessage(status);
      _showAlertDialog(errorMsg);
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
  // void _signUp() async {
  //   String username = _usernameController.text.trim();
  //   String phone = _phoneController.text.trim();
  //   String email = _emailController.text.trim();
  //   String password = _passwordController.text.trim();
  //
  //   print(
  //       'Username: "$username", Phone: "$phone", Email: "$email", Password: "$password"');
  //
  //   // Validate email and password
  //   if (email.isEmpty || password.isEmpty) {
  //     print('Email and password cannot be empty');
  //     return;
  //   }
  //
  //   try {
  //     // Wait for user creation in Firebase
  //     UserCredential userCredential =
  //         await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //
  //     // Now that the user is created, you can proceed with your logic
  //     User? user = userCredential.user;
  //
  //     // You might want to store additional user information here if needed
  //
  //     if (user != null) {
  //       print('User is successfully created');
  //       Navigator.of(context).pushNamed(Routes.loginScreen);
  //     } else {
  //       print('Some error occurred');
  //     }
  //   } catch (e) {
  //     print('Error occurred during sign up: $e');
  //   }
  // }
}
