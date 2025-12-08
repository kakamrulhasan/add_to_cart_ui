import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "\$155",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(width: 10),
            Text(
              '\$210',
              style: TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
                fontSize: 24,
                decorationThickness: 2,
                decorationColor: Colors.grey,
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3), // grey background
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 2,),
                  Text(
                    'Color',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          '25\%OFF',
          style: GoogleFonts.bebasNeue(
            color: const Color.fromARGB(255, 225, 56, 44),
            fontWeight: FontWeight.w900,
            fontSize: 23,
          ),
        ),
        const Text(
          'Air Jordans stand for style, self-expression, and authenticity. Every release carries its own story, blending innovation with heritage.',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 42, 28, 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                padding: EdgeInsets.symmetric(horizontal: 23, vertical: 30),
              ),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 42, 28, 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                padding: EdgeInsets.symmetric(horizontal: 23, vertical: 30),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
