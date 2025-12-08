import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImagesIcon extends StatelessWidget {
  const ImagesIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // allow overflow
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/menu_x.png',
                  width: 30,
                  color: Colors.white,
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 228, 83, 34),
                            Color.fromARGB(255, 234, 91, 91),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 0,
                      child: Image.asset(
                        'assets/menu_y.png',
                        width: 190,
                        height: 200,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                RotatedBox(
                  quarterTurns: 3, // rotates 270° clockwise
                  child: Text(
                    'NIKE AIR',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 121,
                      color:  Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        Positioned(
          top: -130,
          left: -110,
          child: Transform.rotate(
            angle: -0.90,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 255, 0, 0).withOpacity(0.3),
                    blurRadius: 250,
                    spreadRadius: 20,
                    offset: Offset(0, 0)
                  ),
                ],
              ),
              child: Image.asset(
                'assets/shoes.png',
                width: 520,
                height: 500,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
