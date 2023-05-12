import 'package:flutter/material.dart';
import 'package:ontecso_components/ReferralPage/Components/Background/referral_title.dart';
import 'package:ontecso_components/ReferralPage/Components/Background/share_button.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget> [

        SizedBox(
          height: 540,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 510,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 20, 70, 235),
                      Colors.purple,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              
                child: const ReferralTitle(),
                
              ),
            ]
          ),
        ),

        const Positioned(
          bottom: 7,
          child: ShareButton()
        ),
      ]
    );
  }
}
