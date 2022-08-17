import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFF181818),
        padding: const EdgeInsets.only(top: 80, left: 66, bottom: 123),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: const Text(
                "Get knowledge in one click.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 96,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Join us to become an expert in your field without leaving home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 66),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/selected_course_page");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF00B589),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const SizedBox(
                    height: 68,
                    width: 214,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 39),
                ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, "/selected_course_page");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF9800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const SizedBox(
                    height: 68,
                    width: 214,
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
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
  }
}