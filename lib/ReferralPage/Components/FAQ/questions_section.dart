import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontecso_components/ReferralPage/Components/FAQ/question.dart';

class QuestionsSection extends StatefulWidget {
  const QuestionsSection({super.key});

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),

              SizedBox(
                child: Text(
                  'Frequently Asked Questions',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    color: Colors.black, 
                    fontSize: 17, 
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),

              const SizedBox(height: 20),
              
              const Question(),

              const Question(),

              const Question(),

            ],
          ),
        ),
      ),
    );
  }
}