import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: const ExpandableThemeData(
        animationDuration: Duration(milliseconds: 500),
        scrollAnimationDuration: Duration(milliseconds: 500),
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        bodyAlignment: ExpandablePanelBodyAlignment.left,
        iconPlacement: ExpandablePanelIconPlacement.right,
      ),
      
      header: Text('What is Refer and Earn Program?',
        textAlign: TextAlign.start,
        style: GoogleFonts.inter(
          color: Colors.black, 
          fontSize: 14, 
          fontWeight: FontWeight.w700
        ),
      ),

      collapsed: const Text(''),

      expanded: Text('What is Refer and Earn Program What is Refer and Earn Program What is Refer and Earn Program',
        textAlign: TextAlign.start,
        style: GoogleFonts.inter(
          color: Colors.black.withOpacity(0.65), 
          fontSize: 14, 
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}