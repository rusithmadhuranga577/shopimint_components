import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:ontecso_components/Spinwheel/Spinwheel_Page_Components/coupon_box.dart';
import 'package:ontecso_components/Spinwheel/Spinwheel_Page_Components/json_list.dart';
import 'package:rxdart/rxdart.dart';

class SpinWheel extends StatefulWidget {
  final BehaviorSubject<int> selected;
  const SpinWheel({super.key, required this.selected});

  @override
  State<SpinWheel> createState() => _SpinWheelState();

  static of(BuildContext context) {}
}

class _SpinWheelState extends State<SpinWheel> {
  String rewards = '';
  List<FortuneItem> fortuneItems = [];

  @override
  void initState() {
    super.initState();
    for (var item in jsonList) {
      fortuneItems.add(
        FortuneItem(
          child: Text(item['text']),
          style: FortuneItemStyle(
            color: item['color'],
            borderColor: item['borderColor'],
            borderWidth: item['borderWidth'],
            textAlign: TextAlign.center,
            textStyle: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    widget.selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      SizedBox(
        height: 300,
        child: FortuneWheel(
          alignment: Alignment.topCenter,
          indicators: const <FortuneIndicator>[
            FortuneIndicator(
              alignment: Alignment.topCenter,
              child: TriangleIndicator(
                color: Colors.white,
              ),
            ),
          ],
          animateFirst: false,
          duration: const Duration(seconds: 5),
          selected: widget.selected.stream,
          items: fortuneItems,
          onAnimationEnd: () {
            setState(() {
              rewards = jsonList[widget.selected.value]['text'];
            });

            // print(selected.value);

            Dialogs.materialDialog(
                color: Colors.transparent,
                customView: VerticalCoupon(
                  rewards: rewards,
                  selected: widget.selected,
                ),
                context: context,
            );

            // Dialogs.materialDialog(
            //   color: Colors.purple,
            //   title: rewards,
            //   titleStyle: GoogleFonts.lato(
            //     color: Colors.white,
            //     fontSize: 25,
            //     fontWeight: FontWeight.w900,
            //   ),
            //   customViewPosition: CustomViewPosition.BEFORE_ACTION,
            //   context: context,
            //   actions: [
            //     IconsButton(
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //       text: 'Close',
            //       iconData: Icons.close_fullscreen_rounded,
            //       color: Colors.white,
            //       textStyle: GoogleFonts.lato(
            //         color: const Color.fromARGB(255, 73, 71, 71),
            //         fontSize: 18,
            //         fontWeight: FontWeight.w900,
            //       ),
            //       iconColor: const Color.fromARGB(255, 73, 71, 71),
            //     ),
            //   ]);
            
          },
        ),
      ),
      Positioned.fill(
          child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/logo_black.png')),
              shape: BoxShape.circle,
              color: Colors.white),
        ),
      )),
    ]);
  }

  pressSpinButton() {
    setState(() {
      widget.selected.add(Fortune.randomInt(0, jsonList.length));
    });
  }
}
