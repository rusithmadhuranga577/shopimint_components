import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        label: Text(
          ' Share',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700),
        ),
        icon: const Icon(Icons.share_rounded),
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(140, 40),
          foregroundColor: Colors.white60,
          backgroundColor: const Color.fromARGB(255, 37, 88, 230),
          textStyle: GoogleFonts.inter(
              color: Colors.white54, fontSize: 16, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          shadowColor: Colors.purple,
        ),
      ),
    );
  }
}
