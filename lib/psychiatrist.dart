import 'package:flutter/material.dart';
import 'package:your_psychiatrist/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/routing/routes.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';

import 'features/user_auth/firebase_auth_implementation/auth_checker.dart';

class Psychiatrist extends StatelessWidget {
  final AppRouter appRouter;
  const Psychiatrist({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 828),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Psychiatrist',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        //home: AuthChecker(),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
