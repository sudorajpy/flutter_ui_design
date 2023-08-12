import 'package:flutter/material.dart';
import 'package:flutter_ui_design/components/header_text.dart';
import 'package:flutter_ui_design/constants/colors.dart';
import 'package:sizer/sizer.dart';

import '../components/bank_card.dart';
import '../components/function_menu.dart';
import '../components/navbar_widget.dart';
import '../components/transaction_section.dart';
import '../constants/temp_data.dart';
import 'bank_cards_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TempData transactionData = TempData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          padding: EdgeInsets.only(top: 6.h, right: 5.w, left: 5.w),
          color: kBackgroundColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeaderText(
                  title: 'Hello',
                  subTitle: 'Bryce Turner',
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BankCardsScreen()));
                  },
                  child: const BankCard(
                    cardBalance: '\$ 2,500.00',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const FunctionMenu(),
                const SizedBox(
                  height: 20,
                ),
                TransactionSection(transactionData: transactionData),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: kBackgroundColor,
          child: NavBarWid(),
        ));
  }
}
