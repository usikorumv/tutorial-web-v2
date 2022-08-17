import 'package:flutter/material.dart';

import '../../components/base.dart';

// TODO: Replace SizedBox with actual widgets from design
class CreateCoursePage extends StatelessWidget {
  const CreateCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      content: [
        buildGeneralInformation(),
        buildTeacherInformation(),
        buildSprints(),
        buildSyllabus(),
      ],
    );
  }

  buildGeneralInformation() => Container(
        color: const Color(0xFF181818),
        padding: const EdgeInsets.only(top: 89, left: 127, bottom: 78),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "GENERAL INFORMATION",
              style: TextStyle(
                color: Color(0xFFFFD233),
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 31),
            Column(
              children: const [
                SizedBox(),
                SizedBox(height: 31),
                SizedBox(),
              ],
            ),
            const Text(
              "DETAILS",
              style: TextStyle(
                color: Color(0xFFFFD233),
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 31),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "DAY",
                      style: TextStyle(
                        color: Color(0xFF85F4CC),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "TIME",
                      style: TextStyle(
                        color: Color(0xFF85F4CC),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        SizedBox(),
                        SizedBox(width: 15),
                        SizedBox(),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 112),
            const Center(
              child: SaveButton(),
            ),
          ],
        ),
      );

  buildTeacherInformation() => Container(
        color: const Color(0xFFCBC5F9),
        padding: const EdgeInsets.only(top: 50, bottom: 82) +
            const EdgeInsets.symmetric(horizontal: 132),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "TEACHER’S INFROMATION",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 58),
            Row(
              children: [
                SizedBox(
                  height: 190,
                  width: 190,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 25,
                              color: const Color(0xFF1400FF).withOpacity(0.54),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/teacher_avatar.png"),
                          radius: 91,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 74),
                Column(
                  children: const [
                    SizedBox(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: SizedBox(),
                    ),
                    SizedBox(),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF13AC75).withOpacity(0.68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                  child: const SizedBox(
                    height: 46,
                    width: 202,
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  buildSprints() => Container(
        color: const Color(0xFFD1E5FF),
        padding: const EdgeInsets.only(top: 55, bottom: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 150),
              child: Text(
                "SPRINTS",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.only(left: 154),
              child: Row(
                children: const [
                  SizedBox(),
                  Spacer(),
                  SizedBox(),
                ],
              ),
            ),
            const Center(
              child: SaveButton(),
            ),
          ],
        ),
      );

  buildSyllabus() => Container(
        color: const Color(0xFFFFF8BB),
        padding: const EdgeInsets.only(top: 40, bottom: 87),
        child: Column(
          children: [
            const Text(
              "SYLLABUS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 66),
            Row(
              children: const [
                SizedBox(),
                Spacer(),
              ],
            ),
            const SizedBox(height: 165),
            const Center(
              child: SaveButton(),
            ),
          ],
        ),
      );
}

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/course_page");
      },
      style: ElevatedButton.styleFrom(
          primary: const Color(0xFF13AC75).withOpacity(0.68),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          )),
      child: const SizedBox(
        height: 46,
        width: 202,
        child: Center(
          child: Text(
            "Save",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
