import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/features/diseases/widgets/card.dart';
import 'package:your_psychiatrist/features/diseases/widgets/get_started_button.dart';

import '../depression/depression_symp.dart';

class DiseasesScreen extends StatefulWidget {
  const DiseasesScreen({Key? key});

  @override
  State<DiseasesScreen> createState() => _DiseasesScreenState();
}

class _DiseasesScreenState extends State<DiseasesScreen> {
  bool _showAllCards = false;
  bool _showSeeMore = true;

  List<String> diseaseNames = [
    "Depression",
    "Anxiety Disorders",
    "Eating Disorders",
    "Bipolar Disorder",
    "Schizophrenia",
    "PTSD",
    "Substance Abuse Disorders",
    "Delusional Disorder",
    "Postpartum Psychosis",
    "Adjustment Disorders",
    "Phobia",
    "Obsessive Compulsive",
    "ADHD",
    "Body Dysmorphia",
    "Avoidant Personality",
    "Dissociative Identity",
    "Jouska",
    "Trichotillomania",
    "Borderline Personality Disorder",
    "Panic Disorder",
    "Autism Spectrum Disorder",
    "Sleep Disorders",
    "Factitious Disorder",
    "Social Phobia",
    "Narcissistic Personality Disorder",
    "Brief Psychotic Disorder",
  ];

  List<Widget> diseasePages = [
    DepressionPage(),
    // AnxietyDisordersPage(),
    // EatingDisordersPage(),
    // BipolarDisorderPage(),
    // SchizophreniaPage(),
    // PTSDPage(),
    // SubstanceAbusePage(),
    // DelusionalDisorderPage(),
    // PostpartumPsychosisPage(),
    // AdjustmentDisordersPage(),
    // PhobiaPage(),
    // OCDPage(),
    // ADHDPage(),
    // BodyDysmorphiaPage(),
    // AvoidantPersonalityPage(),
    // DissociativeIdentityPage(),
    // JouskaPage(),
    // TrichotillomaniaPage(),
    // BorderlinePersonalityPage(),
    // PanicDisorderPage(),
    // AutismSpectrumPage(),
    // SleepDisordersPage(),
    // FactitiousDisorderPage(),
    // SocialPhobiaPage(),
    // NarcissisticPersonalityPage(),
    // BriefPsychoticPage(),
  ];

  List<Color> cardColors = [
    ColorsManager.lightBlue,
    ColorsManager.mainBlue,
    // Add other colors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildMyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Text(
                  'Select the illness or symptoms that you are currently experiencing!',
                  style: TextStyles.font9semiTransparentBluePoppins,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 1.4,
                ),
                itemCount: _showAllCards ? 26 : 6, // initially display 6 cards
                itemBuilder: (context, index) {
                  return BuildCardWidget(
                      index, diseaseNames[index], () => _navigateToPage(index));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_showSeeMore) _buildSeeMoreButton(),
                  Text(
                    '(Your information will be handled with utmost privacy and confidentiality)',
                    style: TextStyles.font8semiTransparentBlue,
                  ),
                  Divider(
                    thickness: 1.0,
                    color: ColorsManager.lightGrayTransparent,
                  ),
                  Text(
                    'We’re here to help!',
                    style: TextStyles.font16mainBluePoppins,
                  ),
                  Text(
                    'If you are unable to diagnose yourself',
                    style: TextStyles.font10semiTransparentBlue,
                  ),
                  verticalSpace(8), // Add spacing
                  GetStartedButton(context),
                  verticalSpace(8), // Add spacing
                  Text(
                    'We can help you to know your illness',
                    style: TextStyles.font8mainBlue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildMyAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Your health matters to us!',
        style: TextStyles.font16mainBluePoppinsshadow,
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: ColorsManager.mainBlue,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Widget _buildSeeMoreButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showAllCards = true; // show all 26 cards
          _showSeeMore = false;
        });
      },
      child: Text(
        'See More',
        style: TextStyles.font14mainBluePoppinsshadow,
      ),
    );
  }

  void _navigateToPage(int index) {
    if (index < diseasePages.length) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => diseasePages[index]),
      );
    }
  }
}
