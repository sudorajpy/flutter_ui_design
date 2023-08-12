import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class NavBarWid extends StatelessWidget {
  const NavBarWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: knavBgColor,
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            CupertinoIcons.home,
            color: ktextColor,
            size: 30,
          ),
          Icon(
            CupertinoIcons.bookmark,
            color: ktextColor,
            size: 30,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: Gradient.lerp(
                LinearGradient(
                  colors: [
                    knavBtGradient1,
                    knavBtGradient2,
                    knavBtGradient3,
                  ],
                ),
                LinearGradient(
                  colors: [
                    knavBtGradient3,
                    knavBtGradient2,
                    knavBtGradient1,
                  ],
                ),
                0.5,
              ),
            ),
            child: Icon(
              Icons.add,
              color: ktextColor,
              size: 40,
            ),
          ),
          Icon(
            CupertinoIcons.bell,
            color: ktextColor,
            size: 30,
          ),
          Icon(
            CupertinoIcons.person,
            color: ktextColor,
            size: 30,
          ),
        ],
      ),
    );
  }
}


