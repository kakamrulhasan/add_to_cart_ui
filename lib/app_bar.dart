import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
        SizedBox(width: 30),
        Image.asset(
          'assets/nike.png',
          width: 50,
          height: 50,
          color: Colors.white,
        ),
        Spacer(),
        Icon(Icons.favorite_outline, color: Colors.white),
        SizedBox(width: 15),
        Icon(Icons.shopping_bag_outlined, color: Colors.white),
        SizedBox(width: 10),
        Image.asset(
          'assets/four.png',
          width: 30,
          height: 30,
          color: Colors.white,
        ),
      ],
    );
  }
}
