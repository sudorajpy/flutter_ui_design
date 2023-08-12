import 'package:flutter/material.dart';
import 'package:flutter_ui_design/components/header_text.dart';
import 'package:flutter_ui_design/constants/colors.dart';
import 'package:sizer/sizer.dart';

import '../components/navbar_widget.dart';
import '../components/rotate_bank_card.dart';

class BankCardsScreen extends StatelessWidget {
  const BankCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          padding: EdgeInsets.only(top: 7.h, left: 5.w, right: 5.w),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const HeaderText(
                title: 'Bank Cards',
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Balance',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),

                    const Text(
                      '\$ 2,500.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),

                    SizedBox(
                      height: 48.h,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(3, (index) => const RotateBankCard()),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: kBackgroundColor,
          child: NavBarWid(),
        ));
  }
}


