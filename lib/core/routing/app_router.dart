import 'package:flutter/material.dart';
import 'package:your_psychiatrist/core/routing/routes.dart';
import 'package:your_psychiatrist/features/Listofdr/therapists.dart';
import 'package:your_psychiatrist/features/Patient_profile/patient_profile.dart';
import 'package:your_psychiatrist/features/anonymous/anonymous.dart';
import 'package:your_psychiatrist/features/awareness/awareness_screen.dart';
import 'package:your_psychiatrist/features/forget_password/forgotpass.dart';
import 'package:your_psychiatrist/features/home/home_screen.dart';
import 'package:your_psychiatrist/features/home/widgets/therapist_showcase_card.dart';
import 'package:your_psychiatrist/features/onboarding/onboarding_screen.dart';
import '../../features/diseases/diseases_screen.dart';
import '../../features/login/login_screen.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        ); case Routes.anonymous:
      return MaterialPageRoute(
        builder: (_) =>  InnerHealPage(),
      );
      case Routes.therapist:
    return MaterialPageRoute(
      builder: (_) =>  TherapistsPage(),
    );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.awarenessScreen:
        return MaterialPageRoute(
          builder: (_) => const AwarenessScreen(),
        );
      case Routes.diseasesScreen:
        return MaterialPageRoute(
          builder: (_) => const DiseasesScreen(),
        );
      case Routes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPassword(),
        );
      case Routes.profilePage:
        return MaterialPageRoute(
          builder: (_) => const ProfilePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
