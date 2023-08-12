import 'package:flutter/material.dart';
import '../constants/colors.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    super.key,
    this.cardBalance,
  });
  final String? cardBalance;

  @override
  Widget build(BuildContext context) {



    return Container(
      width: double.infinity,
      height: 230,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/cardbg.jpeg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 20,
            
            child: Text(
              cardBalance ?? '',
              style: TextStyle(
                  color: ktextColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          
          Positioned(
            top: 70,
            right: 40,
            child: SizedBox(
            width:50,
            child: Image.asset('assets/images/chip.png'),
          )),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '5489 7654 3210 7894',
                      style: TextStyle(
                          color: ktextColor,
                          fontSize: 20,
                          ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '04/24',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Image.asset(
              'assets/images/mastercard.png',
              width: 50,
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
