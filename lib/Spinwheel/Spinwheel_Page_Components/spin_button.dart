import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpinButton extends StatefulWidget {
  final Function onPressed;
  const SpinButton({super.key, required this.onPressed});

  @override
  State<SpinButton> createState() => _SpinButtonState();
}

class _SpinButtonState extends State<SpinButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: Container(
        height: 50,
        width: 220,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 23, 28, 143),
        ),
        child: Center(
          child: Text(
            "SPIN NOW !",
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 20,
            ),    
          ),
        ),
      ),
    );
  }
}
