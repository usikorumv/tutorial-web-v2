import 'package:flutter/material.dart';

import '../components/base.dart';

class CompleteCoursePage extends StatelessWidget {
  const CompleteCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      // TODO: Fix this magic
      showContacts: false,
      content: [
        buildCongratulations(),
        buildLeaveFeadback(),
        buildFeedbacks(),
      ],
    );
  }

  buildCongratulations() => Container(
        color: const Color(0xFF181818),
        width: double.infinity,
        padding: const EdgeInsets.only(top: 213, bottom: 229),
        child: Column(
          children: [
            const Text(
              "CONGRATULATIONS!",
              style: TextStyle(
                color: Color(0xFF23C376),
                fontSize: 58,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 59),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(text: "Today you have completed the course\n"),
                  TextSpan(
                    text: "CYBESECURITY",
                    style: TextStyle(
                      color: Color(0xFFFFD233),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  buildLeaveFeadback() => Container(
        color: const Color(0xFF181818),
        width: double.infinity,
        padding: const EdgeInsets.only(left: 125, bottom: 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Please, leave your feedback about our course",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50),
            // TODO: Fit with design
            Row(
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
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFB3ACAC)),
                    borderRadius: BorderRadius.circular(49),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Оставьте отзыв о курсе",
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
              ],
            ),
          ],
        ),
      );

  buildFeedbacks() => Container(
        color: const Color(0xFF181818),
        padding: const EdgeInsets.only(left: 75, bottom: 388, right: 196),
        child: Container(
          color: Colors.white,
          height: 722,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 82, top: 31),
            child: Column(
              children: const [
                Feedback(),
                Feedback(),
              ],
            ),
          ),
        ),
      );
}

class Feedback extends StatelessWidget {
  const Feedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 80, bottom: 10),
          child: Text(
            "4 месяца назад",
            style: TextStyle(
              color: Color(0xFFA8A1A1),
              fontSize: 16,
            ),
          ),
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_profile.png"),
            radius: 26,
          ),
          title: const Text(
            "Татьяна Киселева",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Container(
            width: 623,
            padding: const EdgeInsets.only(top: 14),
            // TODO: Fit to Container
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(
                color: Colors.black.withOpacity(0.76),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 130),
      ],
    );
  }
}
