import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendyol_web_v2/src/view/components/tab_with_divider.dart';

class Header extends StatefulWidget {
  const Header({Key? key, this.onTabClicked}) : super(key: key);

  final Function(int)? onTabClicked;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 5, vsync: this);
  }

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
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: TabBar(
              controller: tabController,
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.transparent,
              labelStyle: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: GoogleFonts.montserrat(
                color: Colors.white.withOpacity(0.63),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              onTap: widget.onTabClicked,
              tabs: const [
                TabWithDivider(title: "Home"),
                TabWithDivider(title: "About"),
                TabWithDivider(title: "Courses"),
                TabWithDivider(title: "Mentors"),
                TabWithDivider(
                  title: "Contacts",
                  isSeparator: false,
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
