import 'package:flutter/material.dart';
import 'package:flutter_ui_design/components/transaction_card.dart';

import '../constants/colors.dart';
import '../constants/temp_data.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({
    super.key,
    required this.transactionData,
  });

  final TempData transactionData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transactions Details',
              style: TextStyle(
                  color: ktextColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
       Column(
        children: List.generate(4, (index) => TransactionCard(
          transaction: transactionData.transaction[index],
        )),
       )
      ],
    );
  }
}

