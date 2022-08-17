import 'package:flutter/material.dart';

import '../widgets/review_card.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
}