import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134,
      width: 431,
      padding: const EdgeInsets.only(top: 23, left: 21, right: 52),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        border: Border.all(
          color: const Color(0xFFFF7B52).withOpacity(0.43),
          width: 4,
        ),
      ),
      child: const ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/deadinside.png"),
          radius: 41,
        ),
        title: Text(
          "deadinside",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text(
          "GREAT!! THANK YOU!",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
