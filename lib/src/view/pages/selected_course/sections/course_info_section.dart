import 'package:flutter/material.dart';

class CourseInfoSection extends StatelessWidget {
  const CourseInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onPressed: () {
              Navigator.pushNamed(context, "/course_page");
            },
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
  }
}
