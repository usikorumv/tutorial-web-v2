import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../components/base.dart';

class SelectedCoursePage extends StatelessWidget {
  const SelectedCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      pageHeight: 3800,
      content: [
        buildCourseInfo(),
        buildTeacherInfo(),
        buildSprints(),
        buildSyllabus(),
        buildReviews(),
      ],
    );
  }

  buildCourseInfo() => Container(
        color: const Color(0xFF181818),
        width: double.infinity,
        padding: const EdgeInsets.only(top: 148, bottom: 330),
        child: Column(
          children: [
            const Text(
              "CYBER SECURITY",
              style: TextStyle(
                color: Color(0xFFFFD233),
                fontSize: 58,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 353) +
                  const EdgeInsets.only(top: 44, bottom: 55),
              child: const Text(
                "An intensive and immersive 4-month bootcamp to prepare you for a successful career as a Cyber Security Engineer.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF00925D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const SizedBox(
                height: 50,
                width: 153,
                child: Center(
                  child: Text(
                    "ENROL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 66),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 159),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  const SizedBox(height: 23),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Mondays and Wednesdays\n6:00pm-9:00pm PST",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 2,
                        ),
                      ),
                      Text(
                        "Saturdays\n9:00a.m-1:00p.m PST",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 2,
                        ),
                      ),
                      Text(
                        "Tuesdays and Thursdays\n6:00pm-9:00pm PST",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );

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

  buildReviews() => Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 20, bottom: 179),
        child: Column(
          children: [
            const Text(
              "REVIEWS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 51,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 134),
            // TODO: Remove SizedBox
            SizedBox(
              height: 134,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 66),
                itemCount: 4,
                separatorBuilder: (context, _) => const SizedBox(width: 63),
                itemBuilder: (context, _) => const ReviewCard(),
              ),
            ),
            const SizedBox(height: 162),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF00925D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const SizedBox(
                height: 83,
                width: 253.98,
                child: Center(
                  child: Text(
                    "ENROL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134,
      width: 431,
      padding: const EdgeInsets.only(top: 23, left: 21, right: 52),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        border: Border.all(
          color: const Color(0xFFFF7B52).withOpacity(0.43),
          width: 4,
        ),
      ),
      child: const ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/deadinside.png"),
          radius: 41,
        ),
        title: Text(
          "deadinside",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text(
          "GREAT!! THANK YOU!",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
