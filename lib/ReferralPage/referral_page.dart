import 'package:flutter/material.dart';
import 'Components/Background/background.dart';
import 'Components/FAQ/questions_section.dart';

class ReferralPage extends StatefulWidget {
  const ReferralPage({super.key});

  @override
  State<ReferralPage> createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Background(),

            QuestionsSection(),
          ],
        ),
      ),
    );
  }
}