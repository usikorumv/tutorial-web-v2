import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/base.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  late bool isAlreadyEnrolled;
  late int currentIndex;

  @override
  void initState() {
    super.initState();

    isAlreadyEnrolled = false;
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Base(
      pageHeight: 2124,
      content: [
        Stack(
          alignment: Alignment.center,
          children: [
            // TODO: Fix this magic
            Container(
              color: const Color(0xFF181818),
              width: double.infinity,
              height: 2000 - 317 - 60 - 1,
            ),
            Positioned(
              top: 80,
              child: Visibility(
                visible: !isAlreadyEnrolled,
                child: const Text(
                  "You have enroled to the course!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                buildTitle(),
                buildNavbar(),
                buildContent(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  buildTitle() => Column(
        children: [
          const SizedBox(height: 185),
          Row(
            children: const [
              SizedBox(width: 145),
              Text(
                "CYBER SECURITY",
                style: TextStyle(
                  color: Color(0xFFFFD233),
                  fontSize: 58,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      );

  buildNavbar() => Padding(
        padding: const EdgeInsets.only(top: 91, left: 142, bottom: 115),
        child: Row(
          children: [
            Text(
              "Materials",
              style: GoogleFonts.montserrat(
                shadows: [
                  const Shadow(color: Colors.white, offset: Offset(0, -6))
                ],
                color: Colors.transparent,
                fontSize: 19,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.underline,
                decorationColor: const Color(0xFF2FFFB4),
                decorationThickness: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 61),
              child: Text(
                "Home works",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "Interview",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );

  buildContent() => Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(horizontal: 142),
        child: SingleChildScrollView(
          child: [
            SizedBox(
              height: 1005,
              child: Column(
                children: const [
                  SizedBox(height: 12),
                  TeacherMaterial(),
                ],
              ),
            ),
            SizedBox(
              height: 876,
              child: Column(
                children: const [
                  HomeWork(),
                  HomeWork(),
                ],
              ),
            ),
            SizedBox(
              height: 876,
              child: Stack(
                children: [
                  Column(
                    children: const [
                      SizedBox(height: 37),
                      Schedule(),
                    ],
                  ),
                  const Positioned(
                    left: 39,
                    bottom: 43,
                    child: Message(),
                  ),
                ],
              ),
            )
          ][2],
        ),
      );
}

// TODO: Fit into design
class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 36,
          backgroundImage: AssetImage("assets/images/user_profile.png"),
        ),
        const SizedBox(width: 13),
        Container(
          height: 58,
          width: 604,
          padding: const EdgeInsets.only(left: 22.33),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFB3ACAC)),
            borderRadius: BorderRadius.circular(49),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Message",
              hintStyle: TextStyle(
                color: Color(0xFFB3ACAC),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // TODO: Put normal IconButton
        // IconButton(
        //   onPressed: () {},
        //   color: Color(0xFFB3ACAC),
        //   icon: Icon(
        //     Icons.send,
        //     color: Colors.black,
        //     size: 24.38,
        //   ),
        // ),
      ],
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: ListTile(
        title: const Text(
          "Today",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    height: 3,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                        text:
                            "1.Lorem ipsum dolor sit amet, consectetur adipiscing elit\nYou: "),
                    TextSpan(
                      text: "https://drive.google.com/drive/u/0/my-drive\n",
                      style: TextStyle(color: Color(0xFF5D51B5)),
                    ),
                    TextSpan(
                        text:
                            "2.Lorem ipsum dolor sit amet, consectetur adipiscing elit, dolor sit amet, consectetur adipiscing elit\nYou: "),
                    TextSpan(
                      text: "https://drive.google.com/drive/u/0/my-drive\n",
                      style: TextStyle(color: Color(0xFF5D51B5)),
                    ),
                    TextSpan(
                        text:
                            "3.Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 30,
                width: 537,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: const Color(0xFFA0A0A0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeWork extends StatelessWidget {
  const HomeWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25) +
              const EdgeInsets.only(left: 50, right: 90),
          child: ListTile(
            title: const Text(
              "Today",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "1.Lorem ipsum dolor sit amet, consectetur adipiscing elit\n2.Lorem ipsum dolor sit amet, consectetur adipiscing elit, dolor sit amet, consectetur adipiscing elit\n3.Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                style: TextStyle(
                  color: Colors.black,
                  height: 2,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // TODO: Center trailing button
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF23C376),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const SizedBox(
                height: 27,
                width: 62,
                child: Center(
                  child: Text(
                    "DO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.black.withOpacity(
            0.37,
          ),
        ),
      ],
    );
  }
}

class TeacherMaterial extends StatelessWidget {
  const TeacherMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage("assets/images/teacher_avatar.png"),
      ),
      title: const Text(
        "Teacher`s Name",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.black.withOpacity(0.53),
            width: 1,
          ),
        ),
        // TODO: Paste actual .md data from assets for test
        // child: Markdown(
        //   data: "",
        // ),
      ),
    );
  }
}
