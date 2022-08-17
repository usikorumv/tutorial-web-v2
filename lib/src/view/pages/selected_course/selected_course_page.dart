import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../components/base.dart';

import 'sections/course_info_section.dart';
import 'sections/reviews_section.dart';

class SelectedCoursePage extends StatelessWidget {
  const SelectedCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      content: [
        const CourseInfoSection(),
        buildTeacherInfo(),
        buildSprints(),
        buildSyllabus(),
        const ReviewsSection(),
      ],
    );
  }

  buildTeacherInfo() => Container(
        color: const Color(0xFFCBC5F9),
        width: double.infinity,
        padding:
            const EdgeInsets.only(top: 87, left: 238, bottom: 105, right: 230),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 117,
              child: Image.asset("assets/images/teacher_avatar.png"),
            ),
            const SizedBox(width: 53),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Teacher’s name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3, bottom: 16),
                    child: Text(
                      "Ocupation",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  buildSprints() => Container(
        color: const Color(0xFFD1E5FF),
        width: double.infinity,
        padding: const EdgeInsets.only(top: 109, bottom: 177),
        child: Column(
          children: const [
            Text(
              "SPRINTS",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 51,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 108),
            // TODO: Add Timeline with lines that leads to content
            // SizedBox(
            //   height: 300,
            //   child: Timeline.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 10,
            //     itemBuilder: (context, index) => TimelineTile(
            //       oppositeContents: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text('opposite\ncontents'),
            //       ),
            //       contents: Card(
            //         child: Container(
            //           padding: EdgeInsets.all(8.0),
            //           child: Text('contents'),
            //         ),
            //       ),
            //       node: TimelineNode(
            //         startConnector: SolidLineConnector(thickness: 1),
            //         endConnector: SolidLineConnector(thickness: 1),
            //       ),
            //     ),
            //   ),
            //
            //   // Text(
            //   //   "System security, Identity and Access Management",
            //   //   style: TextStyle(
            //   //     color: Colors.black,
            //   //     fontWeight: FontWeight.w600,
            //   //   ),
            //   // ),
            //
            //   // Text(
            //   //   index == 0 ? index.toString() : "${index}-${index + 1}",
            //   //   style: TextStyle(
            //   //     color: Colors.black,
            //   //     fontSize: 24,
            //   //     fontWeight: FontWeight.w600,
            //   //   ),
            //   // ),
            // ),
          ],
        ),
      );

  buildSyllabus() => Container(
        color: const Color(0xFFFFF8BB),
        width: double.infinity,
        height: 500,
        padding: const EdgeInsets.only(top: 34, bottom: 71.3) +
            const EdgeInsets.symmetric(horizontal: 350),
        child: Column(
          children: const [
            Text(
              "SYLLABUS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 51,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 64.3),
            // TODO: Enable Wrap
            // Wrap(
            //   children: [
            //     ListTile(
            //       leading: Icon(
            //         Icons.check_circle_rounded,
            //         color: Color(0xFF0FA958),
            //         size: 26.4,
            //       ),
            //       title: Text(
            //         "Syllable",
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 24,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      );
}
