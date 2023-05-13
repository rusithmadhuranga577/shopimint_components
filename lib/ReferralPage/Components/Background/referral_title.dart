import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:ontecso_components/ReferralPage/Components/Background/shared_link.dart';

class ReferralTitle extends StatefulWidget {
  const ReferralTitle({super.key});

  @override
  State<ReferralTitle> createState() => _ReferralTitleState();
}

class _ReferralTitleState extends State<ReferralTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),

        Image.asset(
          'assets/images/logo.png',
          height: 25.0,
          fit: BoxFit.cover,
        ),

        const SizedBox(height: 5),

        SizedBox(
          child: Text(
            'Refer your friends',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),

        SizedBox(
          child: Text(
            'and Earn',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),

        const SizedBox(height: 20),

        Lottie.asset(
          'assets/lottie/gift_box.json',
            width: 140,
            height: 140
        ),

        const SizedBox(height: 20),
        
        SizedBox(
          child: Text(
            'Your friend get 100 TimessPoints on sign up',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Colors.white, 
              fontSize: 13, 
              fontWeight: FontWeight.w600
            ),
          ),
        ),

        SizedBox(
          child: Text(
            'and you get 100 TimesPoints too everytime!',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Colors.white, 
              fontSize: 13, 
              fontWeight: FontWeight.w600
            ),
          ),
        ),

        const SizedBox(height: 20),

        const SharedLink(),

        const SizedBox(height: 20),

        SizedBox(
          child: Text(
            'Share your Referral Code via',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Colors.white, 
              fontSize: 15, 
              fontWeight: FontWeight.w600
            ),
          ),
        ),

        const SizedBox(height: 20),

      ],
    );
  }
}
