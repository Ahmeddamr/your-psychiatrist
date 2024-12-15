import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:your_psychiatrist/features/Dr_profile/Doctor_profile.dart';

class DepressionPage extends StatefulWidget {
  @override
  State<DepressionPage> createState() => _DepressionPageState();
}

class _DepressionPageState extends State<DepressionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(
                  'assets/images/WhatsApp Image 2024-02-27 at 1.31.51 PM.jpeg'),
              height: 150,
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Color(0xFF27387B),
                      shadows: [
                        Shadow(
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Anxiety disorders are a group of mental health conditions characterized '
                    '\nby excessive and persistent feelings of fear, worry, and unease, it '
                    '\ninvolves persistent and excessive worry that interferes with daily '
                    '\nactivities. This ongoing worry and tension may be accompanied by'
                    '\nphysical symptoms, such as restlessness, feeling on edge or easily '
                    '\nfatigued, difficulty concentrating, muscle tension or problems sleeping.',
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF334eab),
                        fontFamily: 'Poppins-Regular',
                        height: 1.5),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Symptoms',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF27387B),
                      shadows: [
                        Shadow(
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '1. Excessive worry: Feeling restless, on edge, or having a sense of impending doom.'
                    '\n2. Physical symptoms: Rapid heartbeat, shortness of breath, chest tightness, trembling, sweating, dizziness, or gastrointestinal discomfort.'
                    '\n3. Sleep disturbances: Difficulty falling asleep, staying asleep, or experiencing restless sleep.'
                    '\n4. Irrational fears: Intense fear or avoidance of specific objects, situations, or social interactions.'
                    '\n5. Panic attacks: Sudden episodes of intense fear or discomfort, accompanied by physical symptoms like palpitations, sweating, trembling, and a sense of impending doom.'
                    '\n6. Social withdrawal: Avoidance of social situations due to fear of judgment or embarrassment.'
                    '\n7. Obsessive thoughts: Intrusive thoughts or repetitive behaviors aimed at reducing anxiety.',
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF334eab),
                        fontFamily: 'Poppins-Regular',
                        height: 1.8),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Solutions',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF27387B),
                      shadows: [
                        Shadow(
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '1. Medication: Antidepressants, anti-anxiety medications, and beta-blockers  may be prescribed to alleviate symptoms and help manage anxiety disorders.  Consultation with a psychiatrist is necessary to determine the appropriate medication.'
                    '\n2. Relaxation techniques: Deep breathing exercises, meditation, progressive muscle relaxation, and mindfulness can help reduce anxiety symptoms.'
                    '\n3. Lifestyle modifications: Regular exercise, a balanced diet, adequate sleep, and stress reduction techniques (such as yoga or hobbies) can contribute to overall well-being and help manage anxiety.'
                    '\n4. Support network: Engaging with supportive friends, family, or support groups can provide comfort, understanding, and a sense of belonging.'
                    '\n5. Stress management: Learning effective stress management techniques, such as time management and setting realistic goals, can help reduce anxiety triggers.'
                    '\n6. Self-care: Engaging in activities that bring joy and practicing self-compassion can contribute to overall mental well-being',
                    style: TextStyle(
                        fontSize: 10, color: Color(0xFF334eab), height: 1.8),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Doctors who can help you',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF27387B),
                      shadows: [
                        Shadow(
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 354,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFDADBFA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xFF49529A),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10),
                                    Image.asset(
                                      'assets/images/dr ahmed wael.jpg',
                                      width: 92,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Dr. Amgad Khairy Kamel',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Consultant psychiatrist',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '600 EGP',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '    Address: Al Khalifa Al Maamon,   '
                                      '\n    Heliopolis.',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DoctorProfile()));
                                      },
                                      child: Text('Book'),
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Color(0xFF73DF7E),
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xFF49529A),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10),
                                    Image.asset(
                                      'assets/images/dr ahmed wael.jpg',
                                      width: 92,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Dr. Amgad Khairy Kamel',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Consultant psychiatrist',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '600 EGP',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '    Address: Al Khalifa Al Maamon,   '
                                      '\n    Heliopolis.',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DoctorProfile()));
                                      },
                                      child: Text('Book'),
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Color(0xFF73DF7E),
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
