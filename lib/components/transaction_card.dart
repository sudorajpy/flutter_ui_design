import 'package:flutter/material.dart';

import '../constants/colors.dart';


class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key, required this.transaction,
  });
  final Map<String, dynamic> transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             
              image: DecorationImage(
                image: AssetImage(transaction['icon']),
                fit: BoxFit.cover,
              ),
            ),
            
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction['name'],
                style: TextStyle(
                    color: ktextColor,
                    fontSize: 18,
                    ),
              ),
              Text(
                transaction['date'],
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$${transaction['amount']}',
                style: TextStyle(
                    color: ktextColor,
                    fontSize: 18,
                   ),
              ),
              Text(
                transaction['type'],
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

