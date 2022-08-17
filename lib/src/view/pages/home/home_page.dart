import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/base.dart';

import 'sections/home_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      pageHeight: 5000,
      // TODO: Use sections insted of functions
      content: [
        const HomeSection(),
        buildAbout(),
        buildCourses(),
        buildTeam(),
      ],
    );
  }

  buildAbout() => Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 70, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(flex: 5),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 69,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "ABOUT ",
                      ),
                      TextSpan(
                        text: "LEADEV",
                        style: TextStyle(
                          color: Color(0xFF23C376),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 4),
              ],
            ),
            const SizedBox(height: 58),
            Row(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 910),
                  padding: const EdgeInsets.only(left: 118),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 52),
            Row(
              children: [
                const Spacer(),
                Container(
                  constraints: const BoxConstraints(maxWidth: 910),
                  padding: const EdgeInsets.only(right: 27),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 173),
            Row(
              children: [
                Container(
                  height: 9,
                  width: 700,
                  color: const Color(0xFF23C376),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 64),
            Row(
              children: [
                const Spacer(),
                Container(
                  height: 6,
                  width: 406,
                  color: const Color(0xFF5D51B5),
                ),
              ],
            ),
            const SizedBox(height: 43),
            Row(
              children: [
                const SizedBox(width: 98),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 438),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 69,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: "WHY CHOOSE ",
                        ),
                        TextSpan(
                          text: "LEADEV",
                          style: TextStyle(
                            color: Color(0xFFFFD233),
                          ),
                        ),
                        TextSpan(
                          text: "?",
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 4,
              padding: const EdgeInsets.only(top: 70, left: 96),
              separatorBuilder: (context, index) => SizedBox(
                height: {
                  0: 105.0,
                  1: 82.0,
                  2: 111.0,
                }[index],
              ),
              itemBuilder: (context, index) => [
                const ListTile(
                  leading: Icon(
                    Icons.circle,
                    color: Color(0xFF23C376),
                  ),
                  title: Text(
                    "A modern educational portal with personalized content and tasks.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/icons/triangle.svg"),
                  title: const Text(
                    "A modern educational portal with personalized content and tasks.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Color(0xFF4627FF),
                  ),
                  title: Text(
                    "Experience live inter-team collaboration with Zoom and Discord.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.square,
                    color: Color(0xFFF44336),
                  ),
                  title: Text(
                    "We have replaced unnecessary theoretical knowledge with a small educational material to fully master each skill.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ][index],
            ),
            const SizedBox(height: 134),
            Row(
              children: [
                Container(
                  height: 9,
                  width: 700,
                  color: const Color(0xFFFFD233),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 64),
            Row(
              children: [
                const Spacer(),
                Container(
                  height: 6,
                  width: 406,
                  color: const Color(0xFF5D51B5),
                ),
              ],
            ),
          ],
        ),
      );

  // TODO: Fix weird line that appears in end
  buildCourses() => Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 189),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 34),
              child: Text(
                "POPULAR",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 422,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 29),
                itemCount: 4,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 41.73),
                itemBuilder: (context, index) => const CourseCard(),
              ),
            ),
            const SizedBox(height: 54),
            Row(
              children: [
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF3E6ADA).withOpacity(0.69),
                    side: BorderSide(
                        color: const Color(0xFF5D51B5).withOpacity(0.41),
                        width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const SizedBox(
                    height: 38.73,
                    width: 115.23,
                    child: Center(
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 43.77),
              ],
            )
          ],
        ),
      );

  buildTeam() => Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 171.27, bottom: 396),
        child: Column(
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 69,
                  fontWeight: FontWeight.w900,
                ),
                children: [
                  TextSpan(
                    text: "O",
                    style: TextStyle(color: Color(0xFF23C376)),
                  ),
                  TextSpan(text: "UR T"),
                  TextSpan(
                    text: "E",
                    style: TextStyle(color: Color(0xFFFFD233)),
                  ),
                  TextSpan(text: "A"),
                  TextSpan(
                    text: "M",
                    style: TextStyle(color: Color(0xFF23C376)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 42),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 71),
              child: Wrap(
                spacing: 43,
                children: const [
                  MentorCard(),
                  MentorCard(),
                  MentorCard(),
                  MentorCard(),
                ],
              ),
            ),
          ],
        ),
      );
}

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 418,
      width: 421.16,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/course_preview.png",
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.77, left: 18.66, bottom: 19, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "NAME OF THE BLOG`S",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 17),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 18.5),
                  Row(
                    children: [
                      Text(
                        "20 comments",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.58),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16.65),
                      Text(
                        "20 comments",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.58),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "3 Aug, 2022",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.58),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  const MentorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      child: Column(
        children: [
          CircleAvatar(
            radius: 117,
            backgroundColor: const Color(0xFF878787).withOpacity(0.70),
          ),
          const SizedBox(height: 39),
          const Text(
            "Teacher`s Name",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
