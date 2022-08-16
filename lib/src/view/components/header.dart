import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF181818),
      padding: const EdgeInsets.only(
        top: 44,
        left: 75,
        bottom: 30,
        right: 25.25,
      ),
      child: Row(
        children: [
          Image.asset("assets/images/leadev_logo.png"),
          const Spacer(),
          SizedBox(
            height: 25.01,
            child: Row(
              children: [
                Text(
                  "Home",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const VerticalDivider(
                  color: Colors.white,
                  width: 35,
                ),
                Text(
                  "About",
                  style: GoogleFonts.montserrat(
                    color: Colors.white.withOpacity(0.63),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const VerticalDivider(
                  color: Colors.white,
                  width: 35,
                ),
                Text(
                  "Courses",
                  style: GoogleFonts.montserrat(
                    color: Colors.white.withOpacity(0.63),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const VerticalDivider(
                  color: Colors.white,
                  width: 35,
                ),
                Text(
                  "Mentors",
                  style: GoogleFonts.montserrat(
                    color: Colors.white.withOpacity(0.63),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const VerticalDivider(
                  color: Colors.white,
                  width: 35,
                ),
                Text(
                  "Contacts",
                  style: GoogleFonts.montserrat(
                    color: Colors.white.withOpacity(0.63),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 28),
          const Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 32.5,
          ),
        ],
      ),
    );
  }
}
