import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/pages/home/home_page.dart';
import 'view/pages/selected_course/selected_course_page.dart';
import 'view/pages/after_enroll/after_enroll_page.dart';
import 'view/pages/complete_course_page.dart';
import 'view/pages/create_course/create_course_page.dart';
import 'view/pages/course/course_page.dart';

// TODO: Refactor all of it
class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/create_course_page',
      routes: {
        "/home": (context) => const HomePage(),
        "/selected_course_page": (context) => const SelectedCoursePage(),
        "/after_enroll_page": (context) => const AfterEnrolPage(),
        "/complete_course_page": (context) => const CompleteCoursePage(),
        "/create_course_page": (context) => const CreateCoursePage(),
        "/course_page": (context) => const CoursePage(),
      },
    );
  }
}
