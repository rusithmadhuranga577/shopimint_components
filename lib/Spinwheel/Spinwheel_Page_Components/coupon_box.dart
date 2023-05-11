import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontecso_components/Spinwheel/Spinwheel_Page_Components/json_list.dart';
import 'package:rxdart/subjects.dart';

class VerticalCoupon extends StatelessWidget {
  final String rewards;
  final BehaviorSubject<int> selected;
  const VerticalCoupon({Key? key, required this.rewards, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CouponCard(
      height: 300,
      curvePosition: 180,
      curveRadius: 30,
      borderRadius: 10,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Color.fromARGB(255, 31, 72, 162),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      firstChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ONTECSO TOKENS',
            style: GoogleFonts.lato(
              color: Colors.white54,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          
          const SizedBox(height: 10),

          Text(rewards,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w900,
            ),
          ),

          const SizedBox(height: 10,),

          SelectableText(jsonList[selected.value]['couponCode'],
          style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w900,
            ),
          ),
          
        ],
      ),

      secondChild: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 42),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 80),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white,
            ),
          ),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: jsonList[selected.value]['couponCode']));
            Navigator.pop(context);
          },
          child: const Text(
            'COPY',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
