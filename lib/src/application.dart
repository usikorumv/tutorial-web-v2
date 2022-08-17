import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/pages/home/home_page.dart';
import 'view/pages/selected_course/selected_course_page.dart';
import 'view/pages/course/course_page.dart';
import 'view/pages/complete_course_page.dart';

// TODO: Refactor all of it
class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/home',
      routes: {
        "/home": (context) => const HomePage(),
        "/selected_course_page": (context) => const SelectedCoursePage(),
        "/course_page": (context) => const CoursePage(),
        "/complete_course_page": (context) => const CompleteCoursePage(),
      },
    );
  }
}
