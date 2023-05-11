import 'package:flutter/material.dart';
import 'package:ontecso_components/HotelCard/hotel_card.dart';

class CardSlider extends StatefulWidget {
  const CardSlider({super.key});

  @override
  State<CardSlider> createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const <Widget>[
                  HotelCard(),
                  HotelCard(),
                  HotelCard()
                  // ...
                ],
              ),
          ),
      ),
    );
  }
}