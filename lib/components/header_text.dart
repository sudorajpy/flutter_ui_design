import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
 const HeaderText({
    super.key, required this.title,this.subTitle,
  });
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              if (subTitle != null)
                Text(
                  subTitle!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              
            ],
          ),
        ),
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/person.jpg'),
        )
      ],
    );
  }
}
