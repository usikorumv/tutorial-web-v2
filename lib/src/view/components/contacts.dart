import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(top: 137, bottom: 49),
      child: Column(
        children: [
          const Text(
            "Contacts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "+996(777)77-77-77",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 29),
              Text(
                "+996(555)55-55-55",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 62.34),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/email_icon.svg"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: SvgPicture.asset("assets/icons/instagram_icon.svg"),
              ),
              SvgPicture.asset("assets/icons/tiktok_icon.svg"),
            ],
          ),
          const SizedBox(height: 20.93),
          Row(
            children: const [
              Spacer(),
              Text(
                "© 2022 Leadev, Inc.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 47),
            ],
          ),
        ],
      ),
    );
  }
}
