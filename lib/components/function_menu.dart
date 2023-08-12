import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/constants/colors.dart';
import 'package:flutter_ui_design/screens/analyze_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class FunctionMenu extends StatelessWidget {
  const FunctionMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AnalyzeScreen(),),);
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 4),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [HexColor('#53b2aa'), HexColor('#203e67')])),
                  child: Icon(
                    CupertinoIcons.creditcard_fill,
                    color: Colors.white.withOpacity(0.5),
                    size: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Analyze',
                style: TextStyle(color: ktextColor, fontSize: 18),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5), width: 4),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [HexColor('#80b265'), HexColor('#203e67')])),
                child: Icon(
                  Icons.calendar_today,
                  color: Colors.white.withOpacity(0.5),
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Calender',
                style: TextStyle(color: ktextColor, fontSize: 18),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5), width: 4),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [HexColor('#fcf677'), HexColor('#203e67')])),
                child: Icon(
                  CupertinoIcons.doc,
                  color: Colors.white.withOpacity(0.5),
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Document',
                style: TextStyle(color: ktextColor, fontSize: 18),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5), width: 4),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [HexColor('#a9774b'), HexColor('#203e67')])),
                child: Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.white.withOpacity(0.5),
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Collect',
                style: TextStyle(color: ktextColor, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
