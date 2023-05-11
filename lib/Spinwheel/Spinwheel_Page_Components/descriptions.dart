import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Descriptions extends StatefulWidget {
  const Descriptions({super.key});

  @override
  State<Descriptions> createState() => _DescriptionsState();
}

class _DescriptionsState extends State<Descriptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20,),
      
        Image.asset(
          'assets/images/logo.png',
          height: 23.0,
          fit: BoxFit.cover,
        ),

        const SizedBox(height: 10),

        SizedBox(
          width: 150,
          child: Text('Lucky',
          textAlign: TextAlign.start,
          style: GoogleFonts.norican(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w500
            ),
          ),
        ),

        SizedBox(
          width: 150,
          child: Text('Wheel',
          textAlign: TextAlign.end,
          style: GoogleFonts.norican(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),
          ),
        ),

        const SizedBox(height: 10),

        SizedBox(
          child: Text('Win Instant Prizes',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ),

        SizedBox(
          child: Text('IT’s Your Chance to',
          textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),

        SizedBox(
          child: Text('win a PRIZE',
          textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}