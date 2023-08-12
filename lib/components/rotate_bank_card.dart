import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'bank_card.dart';

class RotateBankCard extends StatelessWidget {
  const RotateBankCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        //rotate 90 degree
        angle: 4.72,
        child: Container(
            width: 100.w,
            height: 30.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
               
                border: Border.all(color: Colors.white, width: 1)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20), child: const BankCard())));
  }
}