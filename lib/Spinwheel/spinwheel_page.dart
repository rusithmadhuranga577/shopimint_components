import 'dart:core';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontecso_components/Spinwheel/Spinwheel_Page_Components/descriptions.dart';
import 'package:ontecso_components/Spinwheel/Spinwheel_Page_Components/json_list.dart';
import 'package:rxdart/subjects.dart';
import 'Spinwheel_Page_Components/spin_button.dart';
import 'Spinwheel_Page_Components/spinwheel.dart';

class SpinwheelPage extends StatefulWidget {
  const SpinwheelPage({super.key});

  @override
  State<SpinwheelPage> createState() => _SpinwheelPageState();
}

class _SpinwheelPageState extends State<SpinwheelPage> {
  final selected = BehaviorSubject<int>();
  String email = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: AnimateGradient(
          primaryColors: const [
            Colors.purple,
            Colors.purpleAccent,
          ],
          secondaryColors: const [
            Colors.blue,
            Colors.blueAccent,
          ],
          duration: const Duration(seconds: 6),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Descriptions(),

                  SizedBox(
                    width: 300,
                    height: 30,
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          email = value ;
                        });
                      },
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))
                        ),
                        hintText: 'Enter your mail here',
                          hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 191, 192, 198)
                          ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SpinWheel(
                    selected: selected,
                  ),

                  const SizedBox(height: 40),

                  SpinButton(
                    onPressed: () {
                      final bool emailValid = 
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
                      if(email.isNotEmpty &&emailValid){
                        pressSpinButton();
                      } 
                    },
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: 240,
                    child: Text(
                      'Just hit the spin button below  grab a chance to win one of our amazing gifts',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pressSpinButton() {
    setState(() {
      selected.add(Fortune.randomInt(0, jsonList.length));
    });
  }
}
